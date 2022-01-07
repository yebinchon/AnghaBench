
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 int EQ ;
 int GET_MODE (int ) ;
 scalar_t__ GET_MODE_CLASS (int ) ;
 scalar_t__ MODE_INT ;
 int NE ;
 int * cmp_operands ;
 int const0_rtx ;
 int gen_lowpart (int ,int ) ;
 int mips_emit_binary (int,int ,int ,int ) ;
 int mips_emit_int_relational (int,int ,int ,int ,int ) ;
 int mips_zero_if_equal (int ,int ) ;

bool
mips_emit_scc (enum rtx_code code, rtx target)
{
  if (GET_MODE_CLASS (GET_MODE (cmp_operands[0])) != MODE_INT)
    return 0;

  target = gen_lowpart (GET_MODE (cmp_operands[0]), target);
  if (code == EQ || code == NE)
    {
      rtx zie = mips_zero_if_equal (cmp_operands[0], cmp_operands[1]);
      mips_emit_binary (code, target, zie, const0_rtx);
    }
  else
    mips_emit_int_relational (code, 0, target,
         cmp_operands[0], cmp_operands[1]);
  return 1;
}
