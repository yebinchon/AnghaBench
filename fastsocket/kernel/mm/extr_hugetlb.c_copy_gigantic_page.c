
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct hstate {int dummy; } ;


 int cond_resched () ;
 int copy_highpage (struct page*,struct page*) ;
 struct page* mem_map_next (struct page*,struct page*,int) ;
 struct hstate* page_hstate (struct page*) ;
 int pages_per_huge_page (struct hstate*) ;

__attribute__((used)) static void copy_gigantic_page(struct page *dst, struct page *src)
{
 int i;
 struct hstate *h = page_hstate(src);
 struct page *dst_base = dst;
 struct page *src_base = src;

 for (i = 0; i < pages_per_huge_page(h); ) {
  cond_resched();
  copy_highpage(dst, src);

  i++;
  dst = mem_map_next(dst, dst_base, i);
  src = mem_map_next(src, src_base, i);
 }
}
