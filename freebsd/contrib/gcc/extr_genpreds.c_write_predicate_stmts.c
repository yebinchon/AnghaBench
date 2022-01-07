
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;



 int GET_CODE (int ) ;



 int XEXP (int ,int) ;
 int fputs (char*,int ) ;
 int generate_switch_p (int ) ;
 int puts (char*) ;
 int stdout ;
 int write_match_code_switch (int ) ;
 int write_predicate_expr (int ) ;

__attribute__((used)) static void
write_predicate_stmts (rtx exp)
{
  switch (GET_CODE (exp))
    {
    case 129:
      if (generate_switch_p (exp))
 {
   write_match_code_switch (exp);
   puts ("      return true;\n"
  "    default:\n"
  "      break;\n"
  "    }\n"
  "  return false;");
   return;
 }
      break;

    case 131:
      if (generate_switch_p (XEXP (exp, 0)))
 {
   write_match_code_switch (XEXP (exp, 0));
   puts ("      break;\n"
  "    default:\n"
  "      return false;\n"
  "    }");
   exp = XEXP (exp, 1);
 }
      break;

    case 130:
      if (generate_switch_p (XEXP (exp, 0)))
 {
   write_match_code_switch (XEXP (exp, 0));
   puts ("      return true;\n"
  "    default:\n"
  "      break;\n"
  "    }");
   exp = XEXP (exp, 1);
 }
      break;

    case 128:
      if (generate_switch_p (XEXP (exp, 0)))
 {
   write_match_code_switch (XEXP (exp, 0));
   puts ("      return false;\n"
  "    default:\n"
  "      break;\n"
  "    }\n"
  "  return true;");
   return;
 }
      break;

    default:
      break;
    }

  fputs("  return ",stdout);
  write_predicate_expr (exp);
  fputs(";\n", stdout);
}
