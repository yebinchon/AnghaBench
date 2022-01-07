
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int finalize_ssa_defs (int ) ;
 int finalize_ssa_uses (int ) ;
 int finalize_ssa_v_may_defs (int ) ;
 int finalize_ssa_v_must_defs (int ) ;
 int finalize_ssa_vuses (int ) ;

__attribute__((used)) static inline void
finalize_ssa_stmt_operands (tree stmt)
{
  finalize_ssa_defs (stmt);
  finalize_ssa_uses (stmt);
  finalize_ssa_v_must_defs (stmt);
  finalize_ssa_v_may_defs (stmt);
  finalize_ssa_vuses (stmt);
}
