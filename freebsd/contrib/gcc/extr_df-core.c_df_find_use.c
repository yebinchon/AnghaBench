
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct df_ref {struct df_ref* next_ref; } ;
struct df {int dummy; } ;
typedef int rtx ;
struct TYPE_2__ {struct df_ref* uses; } ;


 TYPE_1__* DF_INSN_UID_GET (struct df*,unsigned int) ;
 int DF_REF_REAL_REG (struct df_ref*) ;
 scalar_t__ GET_CODE (int ) ;
 unsigned int INSN_UID (int ) ;
 int REG_P (int ) ;
 scalar_t__ SUBREG ;
 int SUBREG_REG (int ) ;
 int gcc_assert (int ) ;
 scalar_t__ rtx_equal_p (int ,int ) ;

struct df_ref *
df_find_use (struct df *df, rtx insn, rtx reg)
{
  unsigned int uid;
  struct df_ref *use;

  if (GET_CODE (reg) == SUBREG)
    reg = SUBREG_REG (reg);
  gcc_assert (REG_P (reg));

  uid = INSN_UID (insn);
  for (use = DF_INSN_UID_GET (df, uid)->uses; use; use = use->next_ref)
    if (rtx_equal_p (DF_REF_REAL_REG (use), reg))
      return use;

  return ((void*)0);
}
