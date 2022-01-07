
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ const0_rtx ;
 scalar_t__ s390_execute_label (scalar_t__) ;

__attribute__((used)) static bool
s390_cannot_copy_insn_p (rtx insn)
{
  rtx label = s390_execute_label (insn);
  return label && label != const0_rtx;
}
