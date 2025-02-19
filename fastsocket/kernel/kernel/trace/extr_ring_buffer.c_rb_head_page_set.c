
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_per_cpu {int dummy; } ;
struct list_head {int next; } ;
struct buffer_page {struct list_head list; } ;


 unsigned long RB_FLAG_MASK ;
 int RB_PAGE_MOVED ;
 unsigned long cmpxchg (unsigned long*,unsigned long,unsigned long) ;

__attribute__((used)) static int rb_head_page_set(struct ring_buffer_per_cpu *cpu_buffer,
       struct buffer_page *head,
       struct buffer_page *prev,
       int old_flag, int new_flag)
{
 struct list_head *list;
 unsigned long val = (unsigned long)&head->list;
 unsigned long ret;

 list = &prev->list;

 val &= ~RB_FLAG_MASK;

 ret = cmpxchg((unsigned long *)&list->next,
        val | old_flag, val | new_flag);


 if ((ret & ~RB_FLAG_MASK) != val)
  return RB_PAGE_MOVED;

 return ret & RB_FLAG_MASK;
}
