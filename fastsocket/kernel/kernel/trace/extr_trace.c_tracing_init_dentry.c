
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 struct dentry* d_tracer ;
 struct dentry* debugfs_create_dir (char*,int *) ;
 int debugfs_initialized () ;
 int pr_warning (char*) ;

struct dentry *tracing_init_dentry(void)
{
 static int once;

 if (d_tracer)
  return d_tracer;

 if (!debugfs_initialized())
  return ((void*)0);

 d_tracer = debugfs_create_dir("tracing", ((void*)0));

 if (!d_tracer && !once) {
  once = 1;
  pr_warning("Could not create debugfs directory 'tracing'\n");
  return ((void*)0);
 }

 return d_tracer;
}
