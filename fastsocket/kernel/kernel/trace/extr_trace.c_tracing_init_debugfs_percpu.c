
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 struct dentry* debugfs_create_dir (char*,struct dentry*) ;
 int pr_warning (char*,char*) ;
 int sprintf (char*,char*,long) ;
 int trace_create_file (char*,int,struct dentry*,void*,int *) ;
 int tracing_buffers_fops ;
 struct dentry* tracing_dentry_percpu () ;
 int tracing_fops ;
 int tracing_pipe_fops ;
 int tracing_stats_fops ;

__attribute__((used)) static void tracing_init_debugfs_percpu(long cpu)
{
 struct dentry *d_percpu = tracing_dentry_percpu();
 struct dentry *d_cpu;

 char cpu_dir[7];

 if (cpu > 999 || cpu < 0)
  return;

 sprintf(cpu_dir, "cpu%ld", cpu);
 d_cpu = debugfs_create_dir(cpu_dir, d_percpu);
 if (!d_cpu) {
  pr_warning("Could not create debugfs '%s' entry\n", cpu_dir);
  return;
 }


 trace_create_file("trace_pipe", 0444, d_cpu,
   (void *) cpu, &tracing_pipe_fops);


 trace_create_file("trace", 0644, d_cpu,
   (void *) cpu, &tracing_fops);

 trace_create_file("trace_pipe_raw", 0444, d_cpu,
   (void *) cpu, &tracing_buffers_fops);

 trace_create_file("stats", 0444, d_cpu,
   (void *) cpu, &tracing_stats_fops);
}
