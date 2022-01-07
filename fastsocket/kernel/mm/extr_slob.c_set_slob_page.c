
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slob_page {int dummy; } ;
struct page {int dummy; } ;


 int __SetPageSlab (struct page*) ;

__attribute__((used)) static inline void set_slob_page(struct slob_page *sp)
{
 __SetPageSlab((struct page *)sp);
}
