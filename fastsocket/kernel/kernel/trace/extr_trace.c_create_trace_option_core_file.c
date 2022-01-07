
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 struct dentry* trace_create_file (char const*,int,struct dentry*,void*,int *) ;
 int trace_options_core_fops ;
 struct dentry* trace_options_init_dentry () ;

__attribute__((used)) static struct dentry *
create_trace_option_core_file(const char *option, long index)
{
 struct dentry *t_options;

 t_options = trace_options_init_dentry();
 if (!t_options)
  return ((void*)0);

 return trace_create_file(option, 0644, t_options, (void *)index,
        &trace_options_core_fops);
}
