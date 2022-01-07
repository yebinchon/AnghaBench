
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer {int wakeup; int nest; } ;
struct perf_output_handle {int wakeup; struct ring_buffer* rb; } ;


 int local_inc (int *) ;
 int local_read (int *) ;
 int preempt_disable () ;

__attribute__((used)) static void perf_output_get_handle(struct perf_output_handle *handle)
{
 struct ring_buffer *rb = handle->rb;

 preempt_disable();
 local_inc(&rb->nest);
 handle->wakeup = local_read(&rb->wakeup);
}
