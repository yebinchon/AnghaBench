
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulong ;
typedef size_t u32 ;
struct TYPE_4__ {int failed_reads; } ;
struct zram {TYPE_2__ stats; TYPE_1__* table; } ;
struct zobj_header {int dummy; } ;
struct page {int dummy; } ;
struct bio_vec {int bv_offset; int bv_len; struct page* bv_page; } ;
struct bio {int bi_size; scalar_t__ bi_sector; } ;
struct TYPE_3__ {int offset; struct page* page; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int KM_USER0 ;
 int KM_USER1 ;
 int LZO_E_OK ;
 size_t PAGE_SIZE ;
 int ZRAM_UNCOMPRESSED ;
 int ZRAM_ZERO ;
 int flush_dcache_page (struct page*) ;
 int handle_uncompressed_page (struct zram*,struct bio_vec*,size_t,int) ;
 int handle_zero_page (struct bio_vec*) ;
 scalar_t__ is_partial_io (struct bio_vec*) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (size_t,int ) ;
 unsigned char* kmap_atomic (struct page*,int ) ;
 int kunmap_atomic (unsigned char*,int ) ;
 int lzo1x_decompress_safe (unsigned char*,scalar_t__,unsigned char*,size_t*) ;
 int memcpy (unsigned char*,unsigned char*,int ) ;
 int pr_debug (char*,int ,int ) ;
 int pr_err (char*,int,size_t) ;
 int pr_info (char*) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ xv_get_object_size (unsigned char*) ;
 int zram_stat64_inc (struct zram*,int *) ;
 int zram_test_flag (struct zram*,size_t,int ) ;

__attribute__((used)) static int zram_bvec_read(struct zram *zram, struct bio_vec *bvec,
     u32 index, int offset, struct bio *bio)
{
 int ret;
 size_t clen;
 struct page *page;
 struct zobj_header *zheader;
 unsigned char *user_mem, *cmem, *uncmem = ((void*)0);

 page = bvec->bv_page;

 if (zram_test_flag(zram, index, ZRAM_ZERO)) {
  handle_zero_page(bvec);
  return 0;
 }


 if (unlikely(!zram->table[index].page)) {
  pr_debug("Read before write: sector=%lu, size=%u",
    (ulong)(bio->bi_sector), bio->bi_size);
  handle_zero_page(bvec);
  return 0;
 }


 if (unlikely(zram_test_flag(zram, index, ZRAM_UNCOMPRESSED))) {
  handle_uncompressed_page(zram, bvec, index, offset);
  return 0;
 }

 if (is_partial_io(bvec)) {

  uncmem = kmalloc(PAGE_SIZE, GFP_KERNEL);
  if (!uncmem) {
   pr_info("Error allocating temp memory!\n");
   return -ENOMEM;
  }
 }

 user_mem = kmap_atomic(page, KM_USER0);
 if (!is_partial_io(bvec))
  uncmem = user_mem;
 clen = PAGE_SIZE;

 cmem = kmap_atomic(zram->table[index].page, KM_USER1) +
  zram->table[index].offset;

 ret = lzo1x_decompress_safe(cmem + sizeof(*zheader),
        xv_get_object_size(cmem) - sizeof(*zheader),
        uncmem, &clen);

 if (is_partial_io(bvec)) {
  memcpy(user_mem + bvec->bv_offset, uncmem + offset,
         bvec->bv_len);
  kfree(uncmem);
 }

 kunmap_atomic(cmem, KM_USER1);
 kunmap_atomic(user_mem, KM_USER0);


 if (unlikely(ret != LZO_E_OK)) {
  pr_err("Decompression failed! err=%d, page=%u\n", ret, index);
  zram_stat64_inc(zram, &zram->stats.failed_reads);
  return ret;
 }

 flush_dcache_page(page);

 return 0;
}
