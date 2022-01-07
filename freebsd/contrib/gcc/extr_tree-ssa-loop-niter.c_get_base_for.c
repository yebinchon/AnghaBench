
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct loop {int dummy; } ;


 scalar_t__ NULL_TREE ;
 scalar_t__ PHI_ARG_DEF_FROM_EDGE (scalar_t__,int ) ;
 scalar_t__ SSA_NAME ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ chain_of_csts_start (struct loop*,scalar_t__) ;
 scalar_t__ is_gimple_min_invariant (scalar_t__) ;
 int loop_latch_edge (struct loop*) ;
 int loop_preheader_edge (struct loop*) ;

__attribute__((used)) static tree
get_base_for (struct loop *loop, tree x)
{
  tree phi, init, next;

  if (is_gimple_min_invariant (x))
    return x;

  phi = chain_of_csts_start (loop, x);
  if (!phi)
    return NULL_TREE;

  init = PHI_ARG_DEF_FROM_EDGE (phi, loop_preheader_edge (loop));
  next = PHI_ARG_DEF_FROM_EDGE (phi, loop_latch_edge (loop));

  if (TREE_CODE (next) != SSA_NAME)
    return NULL_TREE;

  if (!is_gimple_min_invariant (init))
    return NULL_TREE;

  if (chain_of_csts_start (loop, next) != phi)
    return NULL_TREE;

  return phi;
}
