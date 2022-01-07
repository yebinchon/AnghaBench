
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ring_buffer_per_cpu {struct buffer_page* tail_page; } ;
struct buffer_page {TYPE_1__* page; int entries; int write; } ;
struct TYPE_2__ {int commit; } ;


 int RB_WRITE_INTCNT ;
 unsigned long RB_WRITE_MASK ;
 int barrier () ;
 struct buffer_page* cmpxchg (struct buffer_page**,struct buffer_page*,struct buffer_page*) ;
 unsigned long local_add_return (int ,int *) ;
 int local_cmpxchg (int *,unsigned long,unsigned long) ;
 int local_set (int *,int ) ;

__attribute__((used)) static int rb_tail_page_update(struct ring_buffer_per_cpu *cpu_buffer,
          struct buffer_page *tail_page,
          struct buffer_page *next_page)
{
 struct buffer_page *old_tail;
 unsigned long old_entries;
 unsigned long old_write;
 int ret = 0;
 old_write = local_add_return(RB_WRITE_INTCNT, &next_page->write);
 old_entries = local_add_return(RB_WRITE_INTCNT, &next_page->entries);





 barrier();






 if (tail_page == cpu_buffer->tail_page) {

  unsigned long val = old_write & ~RB_WRITE_MASK;
  unsigned long eval = old_entries & ~RB_WRITE_MASK;
  (void)local_cmpxchg(&next_page->write, old_write, val);
  (void)local_cmpxchg(&next_page->entries, old_entries, eval);






  local_set(&next_page->page->commit, 0);

  old_tail = cmpxchg(&cpu_buffer->tail_page,
       tail_page, next_page);

  if (old_tail == tail_page)
   ret = 1;
 }

 return ret;
}
