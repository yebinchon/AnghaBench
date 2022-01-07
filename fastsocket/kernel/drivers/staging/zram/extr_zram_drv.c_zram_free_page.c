
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int pages_stored; int compr_size; int good_compress; int pages_expand; int pages_zero; } ;
struct zram {TYPE_2__* table; TYPE_1__ stats; int mem_pool; } ;
struct zobj_header {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_4__ {int offset; struct page* page; } ;


 int KM_USER0 ;
 int PAGE_SIZE ;
 int ZRAM_UNCOMPRESSED ;
 int ZRAM_ZERO ;
 int __free_page (struct page*) ;
 void* kmap_atomic (struct page*,int ) ;
 int kunmap_atomic (void*,int ) ;
 scalar_t__ unlikely (int) ;
 int xv_free (int ,struct page*,int) ;
 int xv_get_object_size (void*) ;
 int zram_clear_flag (struct zram*,size_t,int ) ;
 int zram_stat64_sub (struct zram*,int *,int) ;
 int zram_stat_dec (int *) ;
 int zram_test_flag (struct zram*,size_t,int ) ;

__attribute__((used)) static void zram_free_page(struct zram *zram, size_t index)
{
 u32 clen;
 void *obj;

 struct page *page = zram->table[index].page;
 u32 offset = zram->table[index].offset;

 if (unlikely(!page)) {




  if (zram_test_flag(zram, index, ZRAM_ZERO)) {
   zram_clear_flag(zram, index, ZRAM_ZERO);
   zram_stat_dec(&zram->stats.pages_zero);
  }
  return;
 }

 if (unlikely(zram_test_flag(zram, index, ZRAM_UNCOMPRESSED))) {
  clen = PAGE_SIZE;
  __free_page(page);
  zram_clear_flag(zram, index, ZRAM_UNCOMPRESSED);
  zram_stat_dec(&zram->stats.pages_expand);
  goto out;
 }

 obj = kmap_atomic(page, KM_USER0) + offset;
 clen = xv_get_object_size(obj) - sizeof(struct zobj_header);
 kunmap_atomic(obj, KM_USER0);

 xv_free(zram->mem_pool, page, offset);
 if (clen <= PAGE_SIZE / 2)
  zram_stat_dec(&zram->stats.good_compress);

out:
 zram_stat64_sub(zram, &zram->stats.compr_size, clen);
 zram_stat_dec(&zram->stats.pages_stored);

 zram->table[index].page = ((void*)0);
 zram->table[index].offset = 0;
}
