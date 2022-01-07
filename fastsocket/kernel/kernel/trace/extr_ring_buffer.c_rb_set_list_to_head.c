
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_per_cpu {int dummy; } ;
struct list_head {int next; } ;


 unsigned long RB_PAGE_HEAD ;
 unsigned long RB_PAGE_UPDATE ;

__attribute__((used)) static void rb_set_list_to_head(struct ring_buffer_per_cpu *cpu_buffer,
    struct list_head *list)
{
 unsigned long *ptr;

 ptr = (unsigned long *)&list->next;
 *ptr |= RB_PAGE_HEAD;
 *ptr &= ~RB_PAGE_UPDATE;
}
