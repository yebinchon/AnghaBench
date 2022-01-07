
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;



 int GET_CODE (int ) ;
 size_t GET_MODE (int ) ;






 size_t VOIDmode ;
 int XEXP (int ,int) ;
 char* XSTR (int ,int) ;
 int fputs (char*,int ) ;
 int gcc_unreachable () ;
 char** mode_name ;
 int print_c_condition (char*) ;
 int printf (char*,char*,...) ;
 int putchar (char) ;
 int stdout ;
 int write_match_code (char*,char*) ;

__attribute__((used)) static void
write_predicate_expr (rtx exp)
{
  switch (GET_CODE (exp))
    {
    case 134:
      putchar ('(');
      write_predicate_expr (XEXP (exp, 0));
      fputs (") && (", stdout);
      write_predicate_expr (XEXP (exp, 1));
      putchar (')');
      break;

    case 132:
      putchar ('(');
      write_predicate_expr (XEXP (exp, 0));
      fputs (") || (", stdout);
      write_predicate_expr (XEXP (exp, 1));
      putchar (')');
      break;

    case 128:
      fputs ("!(", stdout);
      write_predicate_expr (XEXP (exp, 0));
      putchar (')');
      break;

    case 133:
      putchar ('(');
      write_predicate_expr (XEXP (exp, 0));
      fputs (") ? (", stdout);
      write_predicate_expr (XEXP (exp, 1));
      fputs (") : (", stdout);
      write_predicate_expr (XEXP (exp, 2));
      putchar (')');
      break;

    case 130:
      if (GET_MODE (exp) == VOIDmode)
        printf ("%s (op, mode)", XSTR (exp, 1));
      else
        printf ("%s (op, %smode)", XSTR (exp, 1), mode_name[GET_MODE (exp)]);
      break;

    case 131:
      write_match_code (XSTR (exp, 1), XSTR (exp, 0));
      break;

    case 129:
      print_c_condition (XSTR (exp, 0));
      break;

    default:
      gcc_unreachable ();
    }
}
