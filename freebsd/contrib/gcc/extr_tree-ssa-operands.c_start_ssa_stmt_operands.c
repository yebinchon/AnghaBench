
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ VEC_length (int ,int ) ;
 int build_defs ;
 int build_uses ;
 int build_v_may_defs ;
 int build_v_must_defs ;
 int build_vuses ;
 int gcc_assert (int) ;
 int tree ;

__attribute__((used)) static inline void
start_ssa_stmt_operands (void)
{
  gcc_assert (VEC_length (tree, build_defs) == 0);
  gcc_assert (VEC_length (tree, build_uses) == 0);
  gcc_assert (VEC_length (tree, build_vuses) == 0);
  gcc_assert (VEC_length (tree, build_v_may_defs) == 0);
  gcc_assert (VEC_length (tree, build_v_must_defs) == 0);
}
