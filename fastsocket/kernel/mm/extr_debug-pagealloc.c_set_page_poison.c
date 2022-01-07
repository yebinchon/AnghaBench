
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int debug_flags; } ;


 int PAGE_DEBUG_FLAG_POISON ;
 int __set_bit (int ,int *) ;

__attribute__((used)) static inline void set_page_poison(struct page *page)
{
 __set_bit(PAGE_DEBUG_FLAG_POISON, &page->debug_flags);
}
