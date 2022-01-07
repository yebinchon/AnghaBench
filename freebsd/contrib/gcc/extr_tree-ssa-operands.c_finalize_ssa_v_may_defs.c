
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int finalize_ssa_v_may_def_ops (int ) ;

__attribute__((used)) static void
finalize_ssa_v_may_defs (tree stmt)
{
  finalize_ssa_v_may_def_ops (stmt);
}
