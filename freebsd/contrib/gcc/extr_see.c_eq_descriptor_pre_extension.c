
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct see_pre_extension_expr {int se_insn; } ;
typedef scalar_t__ rtx ;


 scalar_t__ SET_SRC (scalar_t__) ;
 int gcc_assert (int) ;
 int rtx_equal_p (scalar_t__,scalar_t__) ;
 scalar_t__ single_set (int ) ;

__attribute__((used)) static int
eq_descriptor_pre_extension (const void *p1, const void *p2)
{
  const struct see_pre_extension_expr *extension1 = p1;
  const struct see_pre_extension_expr *extension2 = p2;
  rtx set1 = single_set (extension1->se_insn);
  rtx set2 = single_set (extension2->se_insn);
  rtx rhs1, rhs2;

  gcc_assert (set1 && set2);
  rhs1 = SET_SRC (set1);
  rhs2 = SET_SRC (set2);

  return rtx_equal_p (rhs1, rhs2);
}
