
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 struct dentry* debugfs_create_dir (char*,struct dentry*) ;
 int pr_warning (char*) ;
 struct dentry* tracing_init_dentry () ;

__attribute__((used)) static struct dentry *trace_options_init_dentry(void)
{
 struct dentry *d_tracer;
 static struct dentry *t_options;

 if (t_options)
  return t_options;

 d_tracer = tracing_init_dentry();
 if (!d_tracer)
  return ((void*)0);

 t_options = debugfs_create_dir("options", d_tracer);
 if (!t_options) {
  pr_warning("Could not create debugfs directory 'options'\n");
  return ((void*)0);
 }

 return t_options;
}
