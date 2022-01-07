
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int copy_insn (int ) ;
 int for_each_rtx (int *,int ,int ) ;
 int mips_rewrite_small_data_1 ;

rtx
mips_rewrite_small_data (rtx op)
{
  op = copy_insn (op);
  for_each_rtx (&op, mips_rewrite_small_data_1, 0);
  return op;
}
