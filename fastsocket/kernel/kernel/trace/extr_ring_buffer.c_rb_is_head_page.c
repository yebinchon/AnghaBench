
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_per_cpu {int dummy; } ;
struct list_head {scalar_t__ next; } ;
struct buffer_page {int list; } ;


 unsigned long RB_FLAG_MASK ;
 int RB_PAGE_MOVED ;

__attribute__((used)) static int inline
rb_is_head_page(struct ring_buffer_per_cpu *cpu_buffer,
  struct buffer_page *page, struct list_head *list)
{
 unsigned long val;

 val = (unsigned long)list->next;

 if ((val & ~RB_FLAG_MASK) != (unsigned long)&page->list)
  return RB_PAGE_MOVED;

 return val & RB_FLAG_MASK;
}
