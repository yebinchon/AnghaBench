
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int HOST_WIDE_INT ;


 scalar_t__ CONST_INT ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ SMALL_OPERAND (int ) ;
 scalar_t__ TARGET_HAVE_TLS ;
 int TARGET_MIPS16 ;
 int VOIDmode ;
 scalar_t__ for_each_rtx (int *,int *,int ) ;
 int mips_split_const (int ,int *,int *) ;
 int mips_tls_symbol_ref_1 ;
 scalar_t__ symbolic_operand (int ,int ) ;

__attribute__((used)) static bool
mips_cannot_force_const_mem (rtx x)
{
  rtx base;
  HOST_WIDE_INT offset;

  if (!TARGET_MIPS16)
    {
      if (GET_CODE (x) == CONST_INT)
 return 1;

      mips_split_const (x, &base, &offset);
      if (symbolic_operand (base, VOIDmode) && SMALL_OPERAND (offset))
 return 1;
    }

  if (TARGET_HAVE_TLS && for_each_rtx (&x, &mips_tls_symbol_ref_1, 0))
    return 1;

  return 0;
}
