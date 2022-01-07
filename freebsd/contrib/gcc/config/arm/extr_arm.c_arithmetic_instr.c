
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;



 int GET_CODE (int ) ;




 int gcc_unreachable () ;

const char *
arithmetic_instr (rtx op, int shift_first_arg)
{
  switch (GET_CODE (op))
    {
    case 129:
      return "add";

    case 130:
      return shift_first_arg ? "rsb" : "sub";

    case 131:
      return "orr";

    case 128:
      return "eor";

    case 132:
      return "and";

    default:
      gcc_unreachable ();
    }
}
