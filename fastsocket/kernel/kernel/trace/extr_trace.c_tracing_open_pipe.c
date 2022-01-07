
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_iterator {long cpu_file; struct trace_iterator* trace; int (* pipe_open ) (struct trace_iterator*) ;int mutex; int * tr; int iter_flags; int started; } ;
struct inode {scalar_t__ i_private; } ;
struct file {struct trace_iterator* private_data; } ;
struct TYPE_2__ {scalar_t__ in_ns; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int TRACE_FILE_LAT_FMT ;
 int TRACE_FILE_TIME_IN_NS ;
 int TRACE_ITER_LATENCY_FMT ;
 long TRACE_PIPE_ALL_CPU ;
 int alloc_cpumask_var (int *,int ) ;
 int cpumask_empty (int ) ;
 int cpumask_set_cpu (long,int ) ;
 int cpumask_setall (int ) ;
 int cpumask_test_cpu (long,int ) ;
 struct trace_iterator* current_trace ;
 int global_trace ;
 int kfree (struct trace_iterator*) ;
 struct trace_iterator* kmalloc (int,int ) ;
 struct trace_iterator* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct trace_iterator*) ;
 size_t trace_clock_id ;
 TYPE_1__* trace_clocks ;
 int trace_flags ;
 int trace_types_lock ;
 scalar_t__ tracing_disabled ;
 int tracing_reader_cpumask ;

__attribute__((used)) static int tracing_open_pipe(struct inode *inode, struct file *filp)
{
 long cpu_file = (long) inode->i_private;
 struct trace_iterator *iter;
 int ret = 0;

 if (tracing_disabled)
  return -ENODEV;

 mutex_lock(&trace_types_lock);


 if (cpu_file == TRACE_PIPE_ALL_CPU) {
  if (!cpumask_empty(tracing_reader_cpumask)) {
   ret = -EBUSY;
   goto out;
  }
  cpumask_setall(tracing_reader_cpumask);
 } else {
  if (!cpumask_test_cpu(cpu_file, tracing_reader_cpumask))
   cpumask_set_cpu(cpu_file, tracing_reader_cpumask);
  else {
   ret = -EBUSY;
   goto out;
  }
 }


 iter = kzalloc(sizeof(*iter), GFP_KERNEL);
 if (!iter) {
  ret = -ENOMEM;
  goto out;
 }





 iter->trace = kmalloc(sizeof(*iter->trace), GFP_KERNEL);
 if (!iter->trace) {
  ret = -ENOMEM;
  goto fail;
 }
 if (current_trace)
  *iter->trace = *current_trace;

 if (!alloc_cpumask_var(&iter->started, GFP_KERNEL)) {
  ret = -ENOMEM;
  goto fail;
 }


 cpumask_setall(iter->started);

 if (trace_flags & TRACE_ITER_LATENCY_FMT)
  iter->iter_flags |= TRACE_FILE_LAT_FMT;


 if (trace_clocks[trace_clock_id].in_ns)
  iter->iter_flags |= TRACE_FILE_TIME_IN_NS;

 iter->cpu_file = cpu_file;
 iter->tr = &global_trace;
 mutex_init(&iter->mutex);
 filp->private_data = iter;

 if (iter->trace->pipe_open)
  iter->trace->pipe_open(iter);

out:
 mutex_unlock(&trace_types_lock);
 return ret;

fail:
 kfree(iter->trace);
 kfree(iter);
 mutex_unlock(&trace_types_lock);
 return ret;
}
