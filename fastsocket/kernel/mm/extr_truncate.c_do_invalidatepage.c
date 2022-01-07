
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {TYPE_2__* mapping; } ;
struct TYPE_4__ {TYPE_1__* a_ops; } ;
struct TYPE_3__ {void (* invalidatepage ) (struct page*,unsigned long) ;} ;


 void block_invalidatepage (struct page*,unsigned long) ;
 void stub1 (struct page*,unsigned long) ;

void do_invalidatepage(struct page *page, unsigned long offset)
{
 void (*invalidatepage)(struct page *, unsigned long);
 invalidatepage = page->mapping->a_ops->invalidatepage;




 if (invalidatepage)
  (*invalidatepage)(page, offset);
}
