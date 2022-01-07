
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct loop {scalar_t__ depth; } ;


 int PHI_RESULT (int ) ;
 int analyze_evolution_in_loop (int ,int ) ;
 int analyze_initial_condition (int ) ;
 int analyze_scalar_evolution (struct loop*,int ) ;
 int compute_overall_effect_of_inner_loop (struct loop*,int ) ;
 struct loop* loop_containing_stmt (int ) ;
 struct loop* superloop_at_depth (struct loop*,scalar_t__) ;

__attribute__((used)) static tree
interpret_loop_phi (struct loop *loop, tree loop_phi_node)
{
  tree res;
  struct loop *phi_loop = loop_containing_stmt (loop_phi_node);
  tree init_cond;

  if (phi_loop != loop)
    {
      struct loop *subloop;
      tree evolution_fn = analyze_scalar_evolution
 (phi_loop, PHI_RESULT (loop_phi_node));


      subloop = superloop_at_depth (phi_loop, loop->depth + 1);


      res = compute_overall_effect_of_inner_loop (subloop, evolution_fn);
      return res;
    }


  init_cond = analyze_initial_condition (loop_phi_node);
  res = analyze_evolution_in_loop (loop_phi_node, init_cond);

  return res;
}
