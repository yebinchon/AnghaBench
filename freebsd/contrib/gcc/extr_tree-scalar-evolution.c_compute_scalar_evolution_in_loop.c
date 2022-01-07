
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct loop {scalar_t__ depth; } ;


 int analyze_scalar_evolution_1 (struct loop*,int ,int ) ;
 int chrec_not_analyzed_yet ;
 int compute_overall_effect_of_inner_loop (struct loop*,int ) ;
 struct loop* superloop_at_depth (struct loop*,scalar_t__) ;

__attribute__((used)) static tree
compute_scalar_evolution_in_loop (struct loop *wrto_loop,
      struct loop *def_loop,
      tree ev)
{
  tree res;
  if (def_loop == wrto_loop)
    return ev;

  def_loop = superloop_at_depth (def_loop, wrto_loop->depth + 1);
  res = compute_overall_effect_of_inner_loop (def_loop, ev);

  return analyze_scalar_evolution_1 (wrto_loop, res, chrec_not_analyzed_yet);
}
