
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct bio_vec {int bv_offset; int bv_len; struct page* bv_page; } ;


 int KM_USER0 ;
 int flush_dcache_page (struct page*) ;
 void* kmap_atomic (struct page*,int ) ;
 int kunmap_atomic (void*,int ) ;
 int memset (void*,int ,int ) ;

__attribute__((used)) static void handle_zero_page(struct bio_vec *bvec)
{
 struct page *page = bvec->bv_page;
 void *user_mem;

 user_mem = kmap_atomic(page, KM_USER0);
 memset(user_mem + bvec->bv_offset, 0, bvec->bv_len);
 kunmap_atomic(user_mem, KM_USER0);

 flush_dcache_page(page);
}
