
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct loop {int dummy; } ;


 scalar_t__ ARRAY_REF ;
 scalar_t__ TREE_CODE (int ) ;
 int array_ref_element_size (int ) ;
 int array_ref_low_bound (int ) ;
 struct loop* outermost_invariant_loop (int ,struct loop*) ;
 struct loop* outermost_invariant_loop_expr (int ,struct loop*) ;

__attribute__((used)) static bool
may_move_till (tree ref, tree *index, void *data)
{
  struct loop *loop = data, *max_loop;



  if (TREE_CODE (ref) == ARRAY_REF)
    {
      tree step = array_ref_element_size (ref);
      tree lbound = array_ref_low_bound (ref);

      max_loop = outermost_invariant_loop_expr (step, loop);
      if (!max_loop)
 return 0;

      max_loop = outermost_invariant_loop_expr (lbound, loop);
      if (!max_loop)
 return 0;
    }

  max_loop = outermost_invariant_loop (*index, loop);
  if (!max_loop)
    return 0;

  return 1;
}
