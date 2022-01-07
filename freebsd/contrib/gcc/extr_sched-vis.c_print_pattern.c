
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;





 int BUF_LEN ;



 int COND_EXEC_CODE (int ) ;
 int COND_EXEC_TEST (int ) ;
 int EQ ;
 int GET_CODE (int ) ;
 int NE ;




 int SET_DEST (int ) ;
 int SET_SRC (int ) ;
 int TRAP_CONDITION (int ) ;




 int XEXP (int ,int) ;
 char* XSTR (int ,int ) ;
 int XVECEXP (int ,int ,int) ;
 int XVECLEN (int ,int ) ;
 int const0_rtx ;
 int gcc_unreachable () ;
 int print_exp (char*,int ,int) ;
 int print_value (char*,int ,int) ;
 int sprintf (char*,char*,...) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void
print_pattern (char *buf, rtx x, int verbose)
{
  char t1[BUF_LEN], t2[BUF_LEN], t3[BUF_LEN];

  switch (GET_CODE (x))
    {
    case 132:
      print_value (t1, SET_DEST (x), verbose);
      print_value (t2, SET_SRC (x), verbose);
      sprintf (buf, "%s=%s", t1, t2);
      break;
    case 134:
      sprintf (buf, "return");
      break;
    case 138:
      print_exp (buf, x, verbose);
      break;
    case 137:
      print_value (t1, XEXP (x, 0), verbose);
      sprintf (buf, "clobber %s", t1);
      break;
    case 128:
      print_value (t1, XEXP (x, 0), verbose);
      sprintf (buf, "use %s", t1);
      break;
    case 136:
      if (GET_CODE (COND_EXEC_TEST (x)) == NE
   && XEXP (COND_EXEC_TEST (x), 1) == const0_rtx)
 print_value (t1, XEXP (COND_EXEC_TEST (x), 0), verbose);
      else if (GET_CODE (COND_EXEC_TEST (x)) == EQ
        && XEXP (COND_EXEC_TEST (x), 1) == const0_rtx)
 {
   t1[0] = '!';
   print_value (t1 + 1, XEXP (COND_EXEC_TEST (x), 0), verbose);
 }
      else
 print_value (t1, COND_EXEC_TEST (x), verbose);
      print_pattern (t2, COND_EXEC_CODE (x), verbose);
      sprintf (buf, "(%s) %s", t1, t2);
      break;
    case 135:
      {
 int i;

 sprintf (t1, "{");
 for (i = 0; i < XVECLEN (x, 0); i++)
   {
     print_pattern (t2, XVECEXP (x, 0, i), verbose);
     sprintf (t3, "%s%s;", t1, t2);
     strcpy (t1, t3);
   }
 sprintf (buf, "%s}", t1);
      }
      break;
    case 133:

      gcc_unreachable ();
    case 139:
      sprintf (buf, "asm {%s}", XSTR (x, 0));
      break;
    case 140:
      break;
    case 141:
      print_value (buf, XEXP (x, 0), verbose);
      break;
    case 131:
      print_value (t1, TRAP_CONDITION (x), verbose);
      sprintf (buf, "trap_if %s", t1);
      break;
    case 130:
      {
 int i;

 sprintf (t1, "unspec{");
 for (i = 0; i < XVECLEN (x, 0); i++)
   {
     print_pattern (t2, XVECEXP (x, 0, i), verbose);
     sprintf (t3, "%s%s;", t1, t2);
     strcpy (t1, t3);
   }
 sprintf (buf, "%s}", t1);
      }
      break;
    case 129:
      {
 int i;

 sprintf (t1, "unspec/v{");
 for (i = 0; i < XVECLEN (x, 0); i++)
   {
     print_pattern (t2, XVECEXP (x, 0, i), verbose);
     sprintf (t3, "%s%s;", t1, t2);
     strcpy (t1, t3);
   }
 sprintf (buf, "%s}", t1);
      }
      break;
    default:
      print_value (buf, x, verbose);
    }
}
