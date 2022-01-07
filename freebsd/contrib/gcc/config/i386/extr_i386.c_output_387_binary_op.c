
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;



 int GET_CODE (int ) ;
 scalar_t__ GET_MODE (int ) ;
 int GET_MODE_CLASS (scalar_t__) ;
 int MEM ;

 int MODE_INT ;


 scalar_t__ REGNO (int ) ;
 int REG_DEAD ;
 scalar_t__ REG_P (int ) ;
 scalar_t__ SFmode ;
 scalar_t__ SSE_REG_P (int ) ;
 scalar_t__ STACK_REG_P (int ) ;
 scalar_t__ STACK_TOP_P (int ) ;
 int find_regno_note (int ,int ,scalar_t__) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int strcat (char*,char const*) ;
 int strcpy (char*,char const*) ;

const char *
output_387_binary_op (rtx insn, rtx *operands)
{
  static char buf[30];
  const char *p;
  const char *ssep;
  int is_sse = SSE_REG_P (operands[0]) || SSE_REG_P (operands[1]) || SSE_REG_P (operands[2]);
  switch (GET_CODE (operands[3]))
    {
    case 128:
      if (GET_MODE_CLASS (GET_MODE (operands[1])) == MODE_INT
   || GET_MODE_CLASS (GET_MODE (operands[2])) == MODE_INT)
 p = "fiadd";
      else
 p = "fadd";
      ssep = "add";
      break;

    case 130:
      if (GET_MODE_CLASS (GET_MODE (operands[1])) == MODE_INT
   || GET_MODE_CLASS (GET_MODE (operands[2])) == MODE_INT)
 p = "fisub";
      else
 p = "fsub";
      ssep = "sub";
      break;

    case 129:
      if (GET_MODE_CLASS (GET_MODE (operands[1])) == MODE_INT
   || GET_MODE_CLASS (GET_MODE (operands[2])) == MODE_INT)
 p = "fimul";
      else
 p = "fmul";
      ssep = "mul";
      break;

    case 131:
      if (GET_MODE_CLASS (GET_MODE (operands[1])) == MODE_INT
   || GET_MODE_CLASS (GET_MODE (operands[2])) == MODE_INT)
 p = "fidiv";
      else
 p = "fdiv";
      ssep = "div";
      break;

    default:
      gcc_unreachable ();
    }

  if (is_sse)
   {
      strcpy (buf, ssep);
      if (GET_MODE (operands[0]) == SFmode)
 strcat (buf, "ss\t{%2, %0|%0, %2}");
      else
 strcat (buf, "sd\t{%2, %0|%0, %2}");
      return buf;
   }
  strcpy (buf, p);

  switch (GET_CODE (operands[3]))
    {
    case 129:
    case 128:
      if (REG_P (operands[2]) && REGNO (operands[0]) == REGNO (operands[2]))
 {
   rtx temp = operands[2];
   operands[2] = operands[1];
   operands[1] = temp;
 }



      if (GET_CODE (operands[2]) == MEM)
 {
   p = "%z2\t%2";
   break;
 }

      if (find_regno_note (insn, REG_DEAD, REGNO (operands[2])))
 {
   if (STACK_TOP_P (operands[0]))







     p = "p\t{%0, %2|%2, %0}";
   else
     p = "p\t{%2, %0|%0, %2}";
   break;
 }

      if (STACK_TOP_P (operands[0]))
 p = "\t{%y2, %0|%0, %y2}";
      else
 p = "\t{%2, %0|%0, %2}";
      break;

    case 130:
    case 131:
      if (GET_CODE (operands[1]) == MEM)
 {
   p = "r%z1\t%1";
   break;
 }

      if (GET_CODE (operands[2]) == MEM)
 {
   p = "%z2\t%2";
   break;
 }

      if (find_regno_note (insn, REG_DEAD, REGNO (operands[2])))
 {
   if (STACK_TOP_P (operands[0]))

     p = "rp\t{%0, %2|%2, %0}";
   else
     p = "p\t{%2, %0|%0, %2}";

   break;
 }

      if (find_regno_note (insn, REG_DEAD, REGNO (operands[1])))
 {






   if (STACK_TOP_P (operands[0]))
     p = "p\t{%0, %1|%1, %0}";
   else
     p = "rp\t{%1, %0|%0, %1}";

   break;
 }

      if (STACK_TOP_P (operands[0]))
 {
   if (STACK_TOP_P (operands[1]))
     p = "\t{%y2, %0|%0, %y2}";
   else
     p = "r\t{%y1, %0|%0, %y1}";
   break;
 }
      else if (STACK_TOP_P (operands[1]))
 {



   p = "r\t{%1, %0|%0, %1}";

 }
      else
 {



   p = "\t{%2, %0|%0, %2}";

 }
      break;

    default:
      gcc_unreachable ();
    }

  strcat (buf, p);
  return buf;
}
