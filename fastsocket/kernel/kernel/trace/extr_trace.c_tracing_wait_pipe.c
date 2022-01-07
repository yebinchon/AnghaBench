
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_iterator {scalar_t__ pos; int mutex; TYPE_1__* trace; } ;
struct file {int f_flags; struct trace_iterator* private_data; } ;
struct TYPE_2__ {int (* wait_pipe ) (struct trace_iterator*) ;} ;


 int EAGAIN ;
 int EINTR ;
 int O_NONBLOCK ;
 int current ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ signal_pending (int ) ;
 int stub1 (struct trace_iterator*) ;
 scalar_t__ trace_empty (struct trace_iterator*) ;
 int tracer_enabled ;

__attribute__((used)) static int tracing_wait_pipe(struct file *filp)
{
 struct trace_iterator *iter = filp->private_data;

 while (trace_empty(iter)) {

  if ((filp->f_flags & O_NONBLOCK)) {
   return -EAGAIN;
  }

  mutex_unlock(&iter->mutex);

  iter->trace->wait_pipe(iter);

  mutex_lock(&iter->mutex);

  if (signal_pending(current))
   return -EINTR;
  if (!tracer_enabled && iter->pos)
   break;
 }

 return 1;
}
