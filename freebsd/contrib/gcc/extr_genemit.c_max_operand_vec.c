
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;
 int max_dup_opno ;
 int max_operand_1 (int ) ;
 int max_opno ;
 int max_scratch_opno ;

__attribute__((used)) static int
max_operand_vec (rtx insn, int arg)
{
  int len = XVECLEN (insn, arg);
  int i;

  max_opno = -1;
  max_dup_opno = -1;
  max_scratch_opno = -1;

  for (i = 0; i < len; i++)
    max_operand_1 (XVECEXP (insn, arg, i));

  return max_opno + 1;
}
