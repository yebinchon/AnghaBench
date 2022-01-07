
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ rtx ;
typedef TYPE_2__* edge ;
struct TYPE_4__ {scalar_t__ r; } ;
struct TYPE_5__ {TYPE_1__ insns; } ;


 scalar_t__ INSN_P (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 scalar_t__ reg_set_p (scalar_t__,scalar_t__) ;

__attribute__((used)) static bool
reg_killed_on_edge (rtx reg, edge e)
{
  rtx insn;

  for (insn = e->insns.r; insn; insn = NEXT_INSN (insn))
    if (INSN_P (insn) && reg_set_p (reg, insn))
      return 1;

  return 0;
}
