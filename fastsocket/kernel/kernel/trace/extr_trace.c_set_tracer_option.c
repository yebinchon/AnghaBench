
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracer_opt {int bit; scalar_t__ name; } ;
struct tracer_flags {int val; struct tracer_opt* opts; } ;
struct tracer {int (* set_flag ) (int ,int ,int) ;struct tracer_flags* flags; } ;


 int EINVAL ;
 int strlen (scalar_t__) ;
 scalar_t__ strncmp (char*,scalar_t__,int) ;
 int stub1 (int ,int ,int) ;

__attribute__((used)) static int set_tracer_option(struct tracer *trace, char *cmp, int neg)
{
 struct tracer_flags *tracer_flags = trace->flags;
 struct tracer_opt *opts = ((void*)0);
 int ret = 0, i = 0;
 int len;

 for (i = 0; tracer_flags->opts[i].name; i++) {
  opts = &tracer_flags->opts[i];
  len = strlen(opts->name);

  if (strncmp(cmp, opts->name, len) == 0) {
   ret = trace->set_flag(tracer_flags->val,
    opts->bit, !neg);
   break;
  }
 }

 if (!tracer_flags->opts[i].name)
  return -EINVAL;


 if (ret)
  return ret;

 if (neg)
  tracer_flags->val &= ~opts->bit;
 else
  tracer_flags->val |= opts->bit;

 return 0;
}
