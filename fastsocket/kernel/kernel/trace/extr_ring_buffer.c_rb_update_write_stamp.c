
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_per_cpu {int write_stamp; } ;
struct ring_buffer_event {scalar_t__ time_delta; } ;


 scalar_t__ rb_event_is_commit (struct ring_buffer_per_cpu*,struct ring_buffer_event*) ;

__attribute__((used)) static void
rb_update_write_stamp(struct ring_buffer_per_cpu *cpu_buffer,
        struct ring_buffer_event *event)
{




 if (rb_event_is_commit(cpu_buffer, event))
  cpu_buffer->write_stamp += event->time_delta;
}
