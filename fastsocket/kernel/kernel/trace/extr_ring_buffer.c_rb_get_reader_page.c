
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ring_buffer_per_cpu {int lock; struct buffer_page* reader_page; int head_page; int pages; struct buffer_page* commit_page; } ;
struct TYPE_6__ {TYPE_2__* next; int prev; } ;
struct buffer_page {scalar_t__ read; TYPE_3__ list; TYPE_1__* page; int entries; int write; } ;
struct TYPE_5__ {TYPE_3__* prev; } ;
struct TYPE_4__ {int commit; } ;


 scalar_t__ RB_WARN_ON (struct ring_buffer_per_cpu*,int) ;
 int __raw_spin_lock (int *) ;
 int __raw_spin_unlock (int *) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int local_set (int *,int ) ;
 int rb_head_page_replace (struct buffer_page*,struct buffer_page*) ;
 int rb_inc_page (struct ring_buffer_per_cpu*,int *) ;
 scalar_t__ rb_page_size (struct buffer_page*) ;
 int rb_reset_reader_page (struct ring_buffer_per_cpu*) ;
 struct buffer_page* rb_set_head_page (struct ring_buffer_per_cpu*) ;
 int rb_set_list_to_head (struct ring_buffer_per_cpu*,TYPE_3__*) ;

__attribute__((used)) static struct buffer_page *
rb_get_reader_page(struct ring_buffer_per_cpu *cpu_buffer)
{
 struct buffer_page *reader = ((void*)0);
 unsigned long flags;
 int nr_loops = 0;
 int ret;

 local_irq_save(flags);
 __raw_spin_lock(&cpu_buffer->lock);

 again:






 if (RB_WARN_ON(cpu_buffer, ++nr_loops > 3)) {
  reader = ((void*)0);
  goto out;
 }

 reader = cpu_buffer->reader_page;


 if (cpu_buffer->reader_page->read < rb_page_size(reader))
  goto out;


 if (RB_WARN_ON(cpu_buffer,
         cpu_buffer->reader_page->read > rb_page_size(reader)))
  goto out;


 reader = ((void*)0);
 if (cpu_buffer->commit_page == cpu_buffer->reader_page)
  goto out;




 local_set(&cpu_buffer->reader_page->write, 0);
 local_set(&cpu_buffer->reader_page->entries, 0);
 local_set(&cpu_buffer->reader_page->page->commit, 0);

 spin:



 reader = rb_set_head_page(cpu_buffer);
 cpu_buffer->reader_page->list.next = reader->list.next;
 cpu_buffer->reader_page->list.prev = reader->list.prev;






 cpu_buffer->pages = reader->list.prev;


 rb_set_list_to_head(cpu_buffer, &cpu_buffer->reader_page->list);
 ret = rb_head_page_replace(reader, cpu_buffer->reader_page);




 if (!ret)
  goto spin;






 reader->list.next->prev = &cpu_buffer->reader_page->list;
 rb_inc_page(cpu_buffer, &cpu_buffer->head_page);


 cpu_buffer->reader_page = reader;
 rb_reset_reader_page(cpu_buffer);

 goto again;

 out:
 __raw_spin_unlock(&cpu_buffer->lock);
 local_irq_restore(flags);

 return reader;
}
