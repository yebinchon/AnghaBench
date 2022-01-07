
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct nfs_page_array {unsigned int npages; int * pagevec; int * page_array; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int GFP_KERNEL ;
 int * kcalloc (unsigned int,int,int ) ;

bool nfs_pgarray_set(struct nfs_page_array *p, unsigned int pagecount)
{
 p->npages = pagecount;
 if (pagecount <= ARRAY_SIZE(p->page_array))
  p->pagevec = p->page_array;
 else {
  p->pagevec = kcalloc(pagecount, sizeof(struct page *), GFP_KERNEL);
  if (!p->pagevec)
   p->npages = 0;
 }
 return p->pagevec != ((void*)0);
}
