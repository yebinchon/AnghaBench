
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;


 int EXPAND_NORMAL ;
 int LAST_VIRTUAL_REGISTER ;
 scalar_t__ MEM_P (int ) ;
 int NULL_RTX ;
 int TREE_TYPE (int ) ;
 int TYPE_MODE (int ) ;
 int XEXP (int ,int ) ;
 scalar_t__ address_cost (int ,int ) ;
 int end_sequence () ;
 int expand_expr (int ,int ,int ,int ) ;
 int get_insns () ;
 int prepare_decl_rtl ;
 unsigned int seq_cost (int ) ;
 int start_sequence () ;
 int walk_tree (int *,int ,int*,int *) ;

__attribute__((used)) static unsigned
computation_cost (tree expr)
{
  rtx seq, rslt;
  tree type = TREE_TYPE (expr);
  unsigned cost;

  int regno = LAST_VIRTUAL_REGISTER + 1;

  walk_tree (&expr, prepare_decl_rtl, &regno, ((void*)0));
  start_sequence ();
  rslt = expand_expr (expr, NULL_RTX, TYPE_MODE (type), EXPAND_NORMAL);
  seq = get_insns ();
  end_sequence ();

  cost = seq_cost (seq);
  if (MEM_P (rslt))
    cost += address_cost (XEXP (rslt, 0), TYPE_MODE (type));

  return cost;
}
