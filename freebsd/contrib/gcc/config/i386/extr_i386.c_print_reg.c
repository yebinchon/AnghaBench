
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int FILE ;


 int ANY_FP_REG_P (int ) ;
 scalar_t__ ARG_POINTER_REGNUM ;
 size_t ARRAY_SIZE (char**) ;
 scalar_t__ ASM_ATT ;
 scalar_t__ ASSEMBLER_DIALECT ;
 size_t FIRST_REX_INT_REG ;
 scalar_t__ FLAGS_REG ;
 scalar_t__ FPSR_REG ;
 scalar_t__ FRAME_POINTER_REGNUM ;
 int GET_MODE (int ) ;
 int GET_MODE_SIZE (int ) ;
 scalar_t__ MMX_REG_P (int ) ;
 size_t REGNO (int ) ;
 scalar_t__ REX_INT_REG_P (int ) ;
 int STACK_TOP_P (int ) ;
 int TARGET_64BIT ;
 scalar_t__* USER_LABEL_PREFIX ;
 int error (char*) ;
 int fprintf (int *,char*,int ) ;
 int fputs (char*,int *) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 char** hi_reg_name ;
 int putc (char,int *) ;
 char** qi_high_reg_name ;
 char** qi_reg_name ;

void
print_reg (rtx x, int code, FILE *file)
{
  gcc_assert (REGNO (x) != ARG_POINTER_REGNUM
       && REGNO (x) != FRAME_POINTER_REGNUM
       && REGNO (x) != FLAGS_REG
       && REGNO (x) != FPSR_REG);

  if (ASSEMBLER_DIALECT == ASM_ATT || USER_LABEL_PREFIX[0] == 0)
    putc ('%', file);

  if (code == 'w' || MMX_REG_P (x))
    code = 2;
  else if (code == 'b')
    code = 1;
  else if (code == 'k')
    code = 4;
  else if (code == 'q')
    code = 8;
  else if (code == 'y')
    code = 3;
  else if (code == 'h')
    code = 0;
  else
    code = GET_MODE_SIZE (GET_MODE (x));



  if (REX_INT_REG_P (x))
    {
      gcc_assert (TARGET_64BIT);
      switch (code)
 {
   case 0:
     error ("extended registers have no high halves");
     break;
   case 1:
     fprintf (file, "r%ib", REGNO (x) - FIRST_REX_INT_REG + 8);
     break;
   case 2:
     fprintf (file, "r%iw", REGNO (x) - FIRST_REX_INT_REG + 8);
     break;
   case 4:
     fprintf (file, "r%id", REGNO (x) - FIRST_REX_INT_REG + 8);
     break;
   case 8:
     fprintf (file, "r%i", REGNO (x) - FIRST_REX_INT_REG + 8);
     break;
   default:
     error ("unsupported operand size for extended register");
     break;
 }
      return;
    }
  switch (code)
    {
    case 3:
      if (STACK_TOP_P (x))
 {
   fputs ("st(0)", file);
   break;
 }

    case 8:
    case 4:
    case 12:
      if (! ANY_FP_REG_P (x))
 putc (code == 8 && TARGET_64BIT ? 'r' : 'e', file);

    case 16:
    case 2:
    normal:
      fputs (hi_reg_name[REGNO (x)], file);
      break;
    case 1:
      if (REGNO (x) >= ARRAY_SIZE (qi_reg_name))
 goto normal;
      fputs (qi_reg_name[REGNO (x)], file);
      break;
    case 0:
      if (REGNO (x) >= ARRAY_SIZE (qi_high_reg_name))
 goto normal;
      fputs (qi_high_reg_name[REGNO (x)], file);
      break;
    default:
      gcc_unreachable ();
    }
}
