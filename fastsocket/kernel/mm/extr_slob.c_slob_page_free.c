
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slob_page {int dummy; } ;
struct page {int dummy; } ;


 int PageSlobFree (struct page*) ;

__attribute__((used)) static inline int slob_page_free(struct slob_page *sp)
{
 return PageSlobFree((struct page *)sp);
}
