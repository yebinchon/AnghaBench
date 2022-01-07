
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct loop {struct loop* outer; int num; } ;


 scalar_t__ analyze_scalar_evolution (struct loop*,scalar_t__) ;
 scalar_t__ chrec_dont_know ;
 int no_evolution_in_loop_p (scalar_t__,int ,int*) ;
 scalar_t__ resolve_mixers (struct loop*,scalar_t__) ;

__attribute__((used)) static tree
analyze_scalar_evolution_in_loop (struct loop *wrto_loop, struct loop *use_loop,
      tree version, bool *folded_casts)
{
  bool val = 0;
  tree ev = version, tmp;

  if (folded_casts)
    *folded_casts = 0;
  while (1)
    {
      tmp = analyze_scalar_evolution (use_loop, ev);
      ev = resolve_mixers (use_loop, tmp);

      if (folded_casts && tmp != ev)
 *folded_casts = 1;

      if (use_loop == wrto_loop)
 return ev;




      if (!no_evolution_in_loop_p (ev, use_loop->num, &val)
   || !val)
 return chrec_dont_know;

      use_loop = use_loop->outer;
    }
}
