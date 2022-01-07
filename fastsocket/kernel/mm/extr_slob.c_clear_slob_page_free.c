
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slob_page {int list; } ;
struct page {int dummy; } ;


 int __ClearPageSlobFree (struct page*) ;
 int list_del (int *) ;

__attribute__((used)) static inline void clear_slob_page_free(struct slob_page *sp)
{
 list_del(&sp->list);
 __ClearPageSlobFree((struct page *)sp);
}
