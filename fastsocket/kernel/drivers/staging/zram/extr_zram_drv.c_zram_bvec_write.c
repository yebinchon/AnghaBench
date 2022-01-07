
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_4__ {int failed_writes; int good_compress; int pages_stored; int compr_size; int pages_expand; int pages_zero; } ;
struct zram {unsigned char* compress_buffer; TYPE_2__ stats; TYPE_1__* table; int mem_pool; int compress_workmem; } ;
struct zobj_header {size_t table_idx; } ;
struct page {int dummy; } ;
struct bio_vec {int bv_offset; size_t bv_len; struct page* bv_page; } ;
struct TYPE_3__ {size_t offset; struct page* page; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GFP_NOIO ;
 int KM_USER0 ;
 int KM_USER1 ;
 int LZO_E_OK ;
 int PAGE_SIZE ;
 int ZRAM_UNCOMPRESSED ;
 int ZRAM_ZERO ;
 int __GFP_HIGHMEM ;
 struct page* alloc_page (int) ;
 scalar_t__ is_partial_io (struct bio_vec*) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int ) ;
 unsigned char* kmap_atomic (struct page*,int ) ;
 int kunmap_atomic (unsigned char*,int ) ;
 int lzo1x_1_compress (unsigned char*,int,unsigned char*,size_t*,int ) ;
 size_t max_zpage_size ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;
 scalar_t__ page_zero_filled (unsigned char*) ;
 int pr_err (char*,int) ;
 int pr_info (char*,...) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ xv_malloc (int ,size_t,struct page**,size_t*,int) ;
 int zram_free_page (struct zram*,size_t) ;
 int zram_read_before_write (struct zram*,unsigned char*,size_t) ;
 int zram_set_flag (struct zram*,size_t,int ) ;
 int zram_stat64_add (struct zram*,int *,size_t) ;
 int zram_stat64_inc (struct zram*,int *) ;
 int zram_stat_inc (int *) ;
 int zram_test_flag (struct zram*,size_t,int ) ;

__attribute__((used)) static int zram_bvec_write(struct zram *zram, struct bio_vec *bvec, u32 index,
      int offset)
{
 int ret;
 u32 store_offset;
 size_t clen;
 struct zobj_header *zheader;
 struct page *page, *page_store;
 unsigned char *user_mem, *cmem, *src, *uncmem = ((void*)0);

 page = bvec->bv_page;
 src = zram->compress_buffer;

 if (is_partial_io(bvec)) {




  uncmem = kmalloc(PAGE_SIZE, GFP_KERNEL);
  if (!uncmem) {
   pr_info("Error allocating temp memory!\n");
   ret = -ENOMEM;
   goto out;
  }
  ret = zram_read_before_write(zram, uncmem, index);
  if (ret) {
   kfree(uncmem);
   goto out;
  }
 }





 if (zram->table[index].page ||
     zram_test_flag(zram, index, ZRAM_ZERO))
  zram_free_page(zram, index);

 user_mem = kmap_atomic(page, KM_USER0);

 if (is_partial_io(bvec))
  memcpy(uncmem + offset, user_mem + bvec->bv_offset,
         bvec->bv_len);
 else
  uncmem = user_mem;

 if (page_zero_filled(uncmem)) {
  kunmap_atomic(user_mem, KM_USER0);
  if (is_partial_io(bvec))
   kfree(uncmem);
  zram_stat_inc(&zram->stats.pages_zero);
  zram_set_flag(zram, index, ZRAM_ZERO);
  ret = 0;
  goto out;
 }

 ret = lzo1x_1_compress(uncmem, PAGE_SIZE, src, &clen,
          zram->compress_workmem);

 kunmap_atomic(user_mem, KM_USER0);
 if (is_partial_io(bvec))
   kfree(uncmem);

 if (unlikely(ret != LZO_E_OK)) {
  pr_err("Compression failed! err=%d\n", ret);
  goto out;
 }






 if (unlikely(clen > max_zpage_size)) {
  clen = PAGE_SIZE;
  page_store = alloc_page(GFP_NOIO | __GFP_HIGHMEM);
  if (unlikely(!page_store)) {
   pr_info("Error allocating memory for "
    "incompressible page: %u\n", index);
   ret = -ENOMEM;
   goto out;
  }

  store_offset = 0;
  zram_set_flag(zram, index, ZRAM_UNCOMPRESSED);
  zram_stat_inc(&zram->stats.pages_expand);
  zram->table[index].page = page_store;
  src = kmap_atomic(page, KM_USER0);
  goto memstore;
 }

 if (xv_malloc(zram->mem_pool, clen + sizeof(*zheader),
        &zram->table[index].page, &store_offset,
        GFP_NOIO | __GFP_HIGHMEM)) {
  pr_info("Error allocating memory for compressed "
   "page: %u, size=%zu\n", index, clen);
  ret = -ENOMEM;
  goto out;
 }

memstore:
 zram->table[index].offset = store_offset;

 cmem = kmap_atomic(zram->table[index].page, KM_USER1) +
  zram->table[index].offset;
 memcpy(cmem, src, clen);

 kunmap_atomic(cmem, KM_USER1);
 if (unlikely(zram_test_flag(zram, index, ZRAM_UNCOMPRESSED)))
  kunmap_atomic(src, KM_USER0);


 zram_stat64_add(zram, &zram->stats.compr_size, clen);
 zram_stat_inc(&zram->stats.pages_stored);
 if (clen <= PAGE_SIZE / 2)
  zram_stat_inc(&zram->stats.good_compress);

 return 0;

out:
 if (ret)
  zram_stat64_inc(zram, &zram->stats.failed_writes);
 return ret;
}
