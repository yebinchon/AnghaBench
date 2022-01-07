
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 struct dentry* d_percpu ;
 struct dentry* debugfs_create_dir (char*,struct dentry*) ;
 int pr_warning (char*) ;
 struct dentry* tracing_init_dentry () ;

struct dentry *tracing_dentry_percpu(void)
{
 static int once;
 struct dentry *d_tracer;

 if (d_percpu)
  return d_percpu;

 d_tracer = tracing_init_dentry();

 if (!d_tracer)
  return ((void*)0);

 d_percpu = debugfs_create_dir("per_cpu", d_tracer);

 if (!d_percpu && !once) {
  once = 1;
  pr_warning("Could not create debugfs directory 'per_cpu'\n");
  return ((void*)0);
 }

 return d_percpu;
}
