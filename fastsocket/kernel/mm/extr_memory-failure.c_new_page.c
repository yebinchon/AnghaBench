
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int GFP_HIGHUSER_MOVABLE ;
 scalar_t__ PageHuge (struct page*) ;
 struct page* alloc_huge_page_node (int ,int) ;
 struct page* alloc_pages_exact_node (int,int ,int ) ;
 int compound_head (struct page*) ;
 int page_hstate (int ) ;
 int page_to_nid (struct page*) ;

__attribute__((used)) static struct page *new_page(struct page *p, unsigned long private, int **x)
{
 int nid = page_to_nid(p);
 if (PageHuge(p))
  return alloc_huge_page_node(page_hstate(compound_head(p)),
         nid);
 else
  return alloc_pages_exact_node(nid, GFP_HIGHUSER_MOVABLE, 0);
}
