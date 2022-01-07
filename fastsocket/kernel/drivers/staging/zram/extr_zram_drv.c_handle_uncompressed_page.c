
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct zram {TYPE_1__* table; } ;
struct page {int dummy; } ;
struct bio_vec {int bv_offset; int bv_len; struct page* bv_page; } ;
struct TYPE_2__ {struct page* page; } ;


 int KM_USER0 ;
 int KM_USER1 ;
 int flush_dcache_page (struct page*) ;
 unsigned char* kmap_atomic (struct page*,int ) ;
 int kunmap_atomic (unsigned char*,int ) ;
 int memcpy (unsigned char*,unsigned char*,int ) ;

__attribute__((used)) static void handle_uncompressed_page(struct zram *zram, struct bio_vec *bvec,
         u32 index, int offset)
{
 struct page *page = bvec->bv_page;
 unsigned char *user_mem, *cmem;

 user_mem = kmap_atomic(page, KM_USER0);
 cmem = kmap_atomic(zram->table[index].page, KM_USER1);

 memcpy(user_mem + bvec->bv_offset, cmem + offset, bvec->bv_len);
 kunmap_atomic(cmem, KM_USER1);
 kunmap_atomic(user_mem, KM_USER0);

 flush_dcache_page(page);
}
