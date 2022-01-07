
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int NULL_TREE ;
 int PHI_RESULT (int ) ;
 int SSA_OP_DEF ;
 int SSA_OP_VIRTUAL_DEFS ;
 scalar_t__ is_gimple_reg (int ) ;

__attribute__((used)) static inline tree
single_phi_def (tree stmt, int flags)
{
  tree def = PHI_RESULT (stmt);
  if ((flags & SSA_OP_DEF) && is_gimple_reg (def))
    return def;
  if ((flags & SSA_OP_VIRTUAL_DEFS) && !is_gimple_reg (def))
    return def;
  return NULL_TREE;
}
