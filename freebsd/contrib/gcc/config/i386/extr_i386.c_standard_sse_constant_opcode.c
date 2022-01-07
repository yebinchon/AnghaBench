
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int MODE_V2DF ;
 int MODE_V4SF ;
 int gcc_unreachable () ;
 int get_attr_mode (int ) ;
 int standard_sse_constant_p (int ) ;

const char *
standard_sse_constant_opcode (rtx insn, rtx x)
{
  switch (standard_sse_constant_p (x))
    {
    case 1:
      if (get_attr_mode (insn) == MODE_V4SF)
        return "xorps\t%0, %0";
      else if (get_attr_mode (insn) == MODE_V2DF)
        return "xorpd\t%0, %0";
      else
        return "pxor\t%0, %0";
    case 2:
      return "pcmpeqd\t%0, %0";
    }
  gcc_unreachable ();
}
