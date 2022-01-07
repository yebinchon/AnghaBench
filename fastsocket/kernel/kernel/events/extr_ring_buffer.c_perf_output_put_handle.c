
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ring_buffer {int wakeup; int nest; int head; TYPE_1__* user_page; } ;
struct perf_output_handle {unsigned long wakeup; struct ring_buffer* rb; } ;
struct TYPE_2__ {unsigned long data_head; } ;


 int local_dec_and_test (int *) ;
 int local_inc (int *) ;
 unsigned long local_read (int *) ;
 int perf_output_wakeup (struct perf_output_handle*) ;
 int preempt_enable () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void perf_output_put_handle(struct perf_output_handle *handle)
{
 struct ring_buffer *rb = handle->rb;
 unsigned long head;

again:
 head = local_read(&rb->head);





 if (!local_dec_and_test(&rb->nest))
  goto out;






 rb->user_page->data_head = head;





 if (unlikely(head != local_read(&rb->head))) {
  local_inc(&rb->nest);
  goto again;
 }

 if (handle->wakeup != local_read(&rb->wakeup))
  perf_output_wakeup(handle);

out:
 preempt_enable();
}
