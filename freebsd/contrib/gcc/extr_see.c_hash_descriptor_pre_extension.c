
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct see_pre_extension_expr {int se_insn; } ;
typedef int rtx ;
typedef int hashval_t ;


 int GET_MODE (int ) ;
 int SET_SRC (int ) ;
 int gcc_assert (int ) ;
 int hash_rtx (int ,int ,int ,int *,int ) ;
 int single_set (int ) ;

__attribute__((used)) static hashval_t
hash_descriptor_pre_extension (const void *p)
{
  const struct see_pre_extension_expr *extension = p;
  rtx set = single_set (extension->se_insn);
  rtx rhs;

  gcc_assert (set);
  rhs = SET_SRC (set);

  return hash_rtx (rhs, GET_MODE (rhs), 0, ((void*)0), 0);
}
