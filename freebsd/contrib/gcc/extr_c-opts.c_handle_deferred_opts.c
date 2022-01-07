
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct deps {int dummy; } ;
struct deferred_opt {scalar_t__ code; int arg; } ;


 scalar_t__ OPT_MQ ;
 scalar_t__ OPT_MT ;
 struct deps* cpp_get_deps (int ) ;
 size_t deferred_count ;
 struct deferred_opt* deferred_opts ;
 int deps_add_target (struct deps*,int ,int) ;
 int deps_seen ;
 int parse_in ;

__attribute__((used)) static void
handle_deferred_opts (void)
{
  size_t i;
  struct deps *deps;




  if (!deps_seen)
    return;

  deps = cpp_get_deps (parse_in);

  for (i = 0; i < deferred_count; i++)
    {
      struct deferred_opt *opt = &deferred_opts[i];

      if (opt->code == OPT_MT || opt->code == OPT_MQ)
 deps_add_target (deps, opt->arg, opt->code == OPT_MQ);
    }
}
