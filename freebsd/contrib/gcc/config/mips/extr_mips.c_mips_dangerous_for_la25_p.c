
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int HOST_WIDE_INT ;


 scalar_t__ TARGET_EXPLICIT_RELOCS ;
 int VOIDmode ;
 int global_got_operand (int ,int ) ;
 int mips_split_const (int ,int *,int *) ;

bool
mips_dangerous_for_la25_p (rtx x)
{
  HOST_WIDE_INT offset;

  if (TARGET_EXPLICIT_RELOCS)
    return 0;

  mips_split_const (x, &x, &offset);
  return global_got_operand (x, VOIDmode);
}
