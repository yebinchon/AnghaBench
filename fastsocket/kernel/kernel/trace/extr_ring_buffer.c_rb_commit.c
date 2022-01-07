
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_per_cpu {int entries; } ;
struct ring_buffer_event {int dummy; } ;


 int local_inc (int *) ;
 int rb_end_commit (struct ring_buffer_per_cpu*) ;
 int rb_update_write_stamp (struct ring_buffer_per_cpu*,struct ring_buffer_event*) ;

__attribute__((used)) static void rb_commit(struct ring_buffer_per_cpu *cpu_buffer,
        struct ring_buffer_event *event)
{
 local_inc(&cpu_buffer->entries);
 rb_update_write_stamp(cpu_buffer, event);
 rb_end_commit(cpu_buffer);
}
