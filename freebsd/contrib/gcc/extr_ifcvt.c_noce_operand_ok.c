
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int FALSE ;
 scalar_t__ MEM_P (int ) ;
 int XEXP (int ,int ) ;
 int may_trap_p (int ) ;
 scalar_t__ side_effects_p (int ) ;

__attribute__((used)) static int
noce_operand_ok (rtx op)
{


  if (MEM_P (op))
    return ! side_effects_p (XEXP (op, 0));

  if (side_effects_p (op))
    return FALSE;

  return ! may_trap_p (op);
}
