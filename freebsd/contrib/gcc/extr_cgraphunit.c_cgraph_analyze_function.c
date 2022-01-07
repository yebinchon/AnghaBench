
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int * tree ;
struct TYPE_7__ {int self_insns; scalar_t__ inlinable; int disregard_inline_limits; } ;
struct TYPE_6__ {int insns; } ;
struct cgraph_node {int analyzed; TYPE_3__ local; TYPE_2__ global; int * decl; } ;
struct TYPE_5__ {int (* disregard_inline_limits ) (int *) ;} ;
struct TYPE_8__ {TYPE_1__ tree_inlining; } ;


 int DECL_STRUCT_FUNCTION (int *) ;
 int cgraph_create_edges (struct cgraph_node*,int *) ;
 int cgraph_lower_function (struct cgraph_node*) ;
 int * current_function_decl ;
 int estimate_num_insns (int *) ;
 scalar_t__ flag_really_no_inline ;
 int flag_unit_at_a_time ;
 int initialize_inline_failed (struct cgraph_node*) ;
 TYPE_4__ lang_hooks ;
 int pop_cfun () ;
 int push_cfun (int ) ;
 int stub1 (int *) ;
 scalar_t__ tree_inlinable_function_p (int *) ;

void
cgraph_analyze_function (struct cgraph_node *node)
{
  tree decl = node->decl;

  current_function_decl = decl;
  push_cfun (DECL_STRUCT_FUNCTION (decl));
  cgraph_lower_function (node);


  cgraph_create_edges (node, decl);

  node->local.inlinable = tree_inlinable_function_p (decl);
  if (!flag_unit_at_a_time)
    node->local.self_insns = estimate_num_insns (decl);
  if (node->local.inlinable)
    node->local.disregard_inline_limits
      = lang_hooks.tree_inlining.disregard_inline_limits (decl);
  initialize_inline_failed (node);
  if (flag_really_no_inline && !node->local.disregard_inline_limits)
    node->local.inlinable = 0;

  node->global.insns = node->local.self_insns;

  node->analyzed = 1;
  pop_cfun ();
  current_function_decl = ((void*)0);
}
