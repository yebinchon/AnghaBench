
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracer_opt {int name; } ;
struct tracer_flags {int dummy; } ;
struct trace_option_dentry {int entry; struct tracer_opt* opt; struct tracer_flags* flags; } ;
struct dentry {int dummy; } ;


 int trace_create_file (int ,int,struct dentry*,struct trace_option_dentry*,int *) ;
 int trace_options_fops ;
 struct dentry* trace_options_init_dentry () ;

__attribute__((used)) static void
create_trace_option_file(struct trace_option_dentry *topt,
    struct tracer_flags *flags,
    struct tracer_opt *opt)
{
 struct dentry *t_options;

 t_options = trace_options_init_dentry();
 if (!t_options)
  return;

 topt->flags = flags;
 topt->opt = opt;

 topt->entry = trace_create_file(opt->name, 0644, t_options, topt,
        &trace_options_fops);

}
