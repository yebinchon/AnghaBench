
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ring_buffer_per_cpu {struct buffer_page* head_page; struct list_head* pages; } ;
struct list_head {TYPE_1__* prev; } ;
struct TYPE_4__ {int prev; } ;
struct buffer_page {TYPE_2__ list; } ;
struct TYPE_3__ {int next; } ;


 scalar_t__ RB_WARN_ON (struct ring_buffer_per_cpu*,int) ;
 int rb_inc_page (struct ring_buffer_per_cpu*,struct buffer_page**) ;
 scalar_t__ rb_is_head_page (struct ring_buffer_per_cpu*,struct buffer_page*,int ) ;
 struct list_head* rb_list_head (int ) ;

__attribute__((used)) static struct buffer_page *
rb_set_head_page(struct ring_buffer_per_cpu *cpu_buffer)
{
 struct buffer_page *head;
 struct buffer_page *page;
 struct list_head *list;
 int i;

 if (RB_WARN_ON(cpu_buffer, !cpu_buffer->head_page))
  return ((void*)0);


 list = cpu_buffer->pages;
 if (RB_WARN_ON(cpu_buffer, rb_list_head(list->prev->next) != list))
  return ((void*)0);

 page = head = cpu_buffer->head_page;






 for (i = 0; i < 3; i++) {
  do {
   if (rb_is_head_page(cpu_buffer, page, page->list.prev)) {
    cpu_buffer->head_page = page;
    return page;
   }
   rb_inc_page(cpu_buffer, &page);
  } while (page != head);
 }

 RB_WARN_ON(cpu_buffer, 1);

 return ((void*)0);
}
