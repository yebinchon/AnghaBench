
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_2__ {int insns; } ;
struct cgraph_node {TYPE_1__ global; scalar_t__ decl; } ;


 scalar_t__ DECL_ARGUMENTS (scalar_t__) ;
 int PARAM_INLINE_CALL_COST ;
 int PARAM_VALUE (int ) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ estimate_move_cost (int ) ;
 int gcc_assert (int) ;

__attribute__((used)) static int
cgraph_estimate_size_after_inlining (int times, struct cgraph_node *to,
         struct cgraph_node *what)
{
  int size;
  tree fndecl = what->decl, arg;
  int call_insns = PARAM_VALUE (PARAM_INLINE_CALL_COST);

  for (arg = DECL_ARGUMENTS (fndecl); arg; arg = TREE_CHAIN (arg))
    call_insns += estimate_move_cost (TREE_TYPE (arg));
  size = (what->global.insns - call_insns) * times + to->global.insns;
  gcc_assert (size >= 0);
  return size;
}
