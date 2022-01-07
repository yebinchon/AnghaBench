
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracer_opt {scalar_t__ name; } ;
struct tracer_flags {struct tracer_opt* opts; } ;
struct tracer {struct tracer_flags* flags; } ;
struct trace_option_dentry {int dummy; } ;


 int GFP_KERNEL ;
 int create_trace_option_file (struct trace_option_dentry*,struct tracer_flags*,struct tracer_opt*) ;
 struct trace_option_dentry* kcalloc (int,int,int ) ;

__attribute__((used)) static struct trace_option_dentry *
create_trace_option_files(struct tracer *tracer)
{
 struct trace_option_dentry *topts;
 struct tracer_flags *flags;
 struct tracer_opt *opts;
 int cnt;

 if (!tracer)
  return ((void*)0);

 flags = tracer->flags;

 if (!flags || !flags->opts)
  return ((void*)0);

 opts = flags->opts;

 for (cnt = 0; opts[cnt].name; cnt++)
  ;

 topts = kcalloc(cnt + 1, sizeof(*topts), GFP_KERNEL);
 if (!topts)
  return ((void*)0);

 for (cnt = 0; opts[cnt].name; cnt++)
  create_trace_option_file(&topts[cnt], flags,
      &opts[cnt]);

 return topts;
}
