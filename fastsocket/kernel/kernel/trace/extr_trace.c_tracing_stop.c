
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ring_buffer {int dummy; } ;
struct TYPE_4__ {struct ring_buffer* buffer; } ;
struct TYPE_3__ {struct ring_buffer* buffer; } ;


 int __raw_spin_lock (int *) ;
 int __raw_spin_unlock (int *) ;
 int ftrace_max_lock ;
 int ftrace_stop () ;
 TYPE_2__ global_trace ;
 TYPE_1__ max_tr ;
 int ring_buffer_record_disable (struct ring_buffer*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trace_stop_count ;
 int tracing_start_lock ;

void tracing_stop(void)
{
 struct ring_buffer *buffer;
 unsigned long flags;

 ftrace_stop();
 spin_lock_irqsave(&tracing_start_lock, flags);
 if (trace_stop_count++)
  goto out;


 __raw_spin_lock(&ftrace_max_lock);

 buffer = global_trace.buffer;
 if (buffer)
  ring_buffer_record_disable(buffer);

 buffer = max_tr.buffer;
 if (buffer)
  ring_buffer_record_disable(buffer);

 __raw_spin_unlock(&ftrace_max_lock);

 out:
 spin_unlock_irqrestore(&tracing_start_lock, flags);
}
