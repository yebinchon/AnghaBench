
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_iterator {int dummy; } ;
struct file {struct trace_iterator* private_data; } ;
typedef int poll_table ;


 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 int TRACE_ITER_BLOCK ;
 int poll_wait (struct file*,int *,int *) ;
 int trace_empty (struct trace_iterator*) ;
 int trace_flags ;
 int trace_wait ;

__attribute__((used)) static unsigned int
tracing_poll_pipe(struct file *filp, poll_table *poll_table)
{
 struct trace_iterator *iter = filp->private_data;

 if (trace_flags & TRACE_ITER_BLOCK) {



  return POLLIN | POLLRDNORM;
 } else {
  if (!trace_empty(iter))
   return POLLIN | POLLRDNORM;
  poll_wait(filp, &trace_wait, poll_table);
  if (!trace_empty(iter))
   return POLLIN | POLLRDNORM;

  return 0;
 }
}
