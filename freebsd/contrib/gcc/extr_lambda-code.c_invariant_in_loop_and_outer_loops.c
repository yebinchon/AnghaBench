
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct loop {scalar_t__ depth; struct loop* outer; } ;


 int expr_invariant_in_loop_p (struct loop*,int ) ;
 scalar_t__ is_gimple_min_invariant (int ) ;

__attribute__((used)) static bool
invariant_in_loop_and_outer_loops (struct loop *loop, tree op)
{
  if (is_gimple_min_invariant (op))
    return 1;
  if (loop->depth == 0)
    return 1;
  if (!expr_invariant_in_loop_p (loop, op))
    return 0;
  if (loop->outer
      && !invariant_in_loop_and_outer_loops (loop->outer, op))
    return 0;
  return 1;
}
