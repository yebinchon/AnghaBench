
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int SetPageUnevictable (struct page*) ;
 scalar_t__ TestClearPageUnevictable (struct page*) ;

__attribute__((used)) static inline void unevictable_migrate_page(struct page *new, struct page *old)
{
 if (TestClearPageUnevictable(old))
  SetPageUnevictable(new);
}
