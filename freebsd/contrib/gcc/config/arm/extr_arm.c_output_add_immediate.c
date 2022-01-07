
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int HOST_WIDE_INT ;


 int INTVAL (int ) ;
 scalar_t__ REGNO (int ) ;
 int output_multi_immediate (int *,char*,char*,int,int ) ;

const char *
output_add_immediate (rtx *operands)
{
  HOST_WIDE_INT n = INTVAL (operands[2]);

  if (n != 0 || REGNO (operands[0]) != REGNO (operands[1]))
    {
      if (n < 0)
 output_multi_immediate (operands,
    "sub%?\t%0, %1, %2", "sub%?\t%0, %0, %2", 2,
    -n);
      else
 output_multi_immediate (operands,
    "add%?\t%0, %1, %2", "add%?\t%0, %0, %2", 2,
    n);
    }

  return "";
}
