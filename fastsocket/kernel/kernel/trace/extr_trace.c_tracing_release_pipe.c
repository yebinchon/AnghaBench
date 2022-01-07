
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_iterator {scalar_t__ cpu_file; struct trace_iterator* trace; int mutex; int started; } ;
struct inode {int dummy; } ;
struct file {struct trace_iterator* private_data; } ;


 scalar_t__ TRACE_PIPE_ALL_CPU ;
 int cpumask_clear (int ) ;
 int cpumask_clear_cpu (scalar_t__,int ) ;
 int free_cpumask_var (int ) ;
 int kfree (struct trace_iterator*) ;
 int mutex_destroy (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int trace_types_lock ;
 int tracing_reader_cpumask ;

__attribute__((used)) static int tracing_release_pipe(struct inode *inode, struct file *file)
{
 struct trace_iterator *iter = file->private_data;

 mutex_lock(&trace_types_lock);

 if (iter->cpu_file == TRACE_PIPE_ALL_CPU)
  cpumask_clear(tracing_reader_cpumask);
 else
  cpumask_clear_cpu(iter->cpu_file, tracing_reader_cpumask);

 mutex_unlock(&trace_types_lock);

 free_cpumask_var(iter->started);
 mutex_destroy(&iter->mutex);
 kfree(iter->trace);
 kfree(iter);

 return 0;
}
