
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slob_page {int list; } ;
struct page {int dummy; } ;
struct list_head {int dummy; } ;


 int __SetPageSlobFree (struct page*) ;
 int list_add (int *,struct list_head*) ;

__attribute__((used)) static void set_slob_page_free(struct slob_page *sp, struct list_head *list)
{
 list_add(&sp->list, list);
 __SetPageSlobFree((struct page *)sp);
}
