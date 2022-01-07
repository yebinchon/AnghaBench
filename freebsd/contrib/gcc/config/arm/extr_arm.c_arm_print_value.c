
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int FILE ;







 int CONST_VECTOR_ELT (int ,int) ;
 int CONST_VECTOR_NUNITS (int ) ;
 int GET_CODE (int ) ;
 char* HOST_WIDE_INT_PRINT_HEX ;
 int INSN_UID (int ) ;
 int INTVAL (int ) ;




 int XEXP (int ,int) ;
 char* XSTR (int ,int ) ;
 scalar_t__ XWINT (int ,int) ;
 int fprintf (int *,char*,...) ;
 int fputc (char,int *) ;

__attribute__((used)) static void
arm_print_value (FILE *f, rtx x)
{
  switch (GET_CODE (x))
    {
    case 134:
      fprintf (f, HOST_WIDE_INT_PRINT_HEX, INTVAL (x));
      return;

    case 135:
      fprintf (f, "<0x%lx,0x%lx>", (long)XWINT (x, 2), (long)XWINT (x, 3));
      return;

    case 132:
      {
 int i;

 fprintf (f, "<");
 for (i = 0; i < CONST_VECTOR_NUNITS (x); i++)
   {
     fprintf (f, HOST_WIDE_INT_PRINT_HEX, INTVAL (CONST_VECTOR_ELT (x, i)));
     if (i < (CONST_VECTOR_NUNITS (x) - 1))
       fputc (',', f);
   }
 fprintf (f, ">");
      }
      return;

    case 133:
      fprintf (f, "\"%s\"", XSTR (x, 0));
      return;

    case 128:
      fprintf (f, "`%s'", XSTR (x, 0));
      return;

    case 131:
      fprintf (f, "L%d", INSN_UID (XEXP (x, 0)));
      return;

    case 136:
      arm_print_value (f, XEXP (x, 0));
      return;

    case 129:
      arm_print_value (f, XEXP (x, 0));
      fprintf (f, "+");
      arm_print_value (f, XEXP (x, 1));
      return;

    case 130:
      fprintf (f, "pc");
      return;

    default:
      fprintf (f, "????");
      return;
    }
}
