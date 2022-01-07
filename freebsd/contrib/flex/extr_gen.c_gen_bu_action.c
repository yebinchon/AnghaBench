
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ fullspd ;
 scalar_t__ fulltbl ;
 int indent_puts (char*) ;
 scalar_t__ num_backing_up ;
 int outc (char) ;
 scalar_t__ reject ;
 int set_indent (int) ;

void gen_bu_action ()
{
 if (reject || num_backing_up == 0)
  return;

 set_indent (3);

 indent_puts ("case 0: /* must back up */");
 indent_puts ("/* undo the effects of YY_DO_BEFORE_ACTION */");
 indent_puts ("*yy_cp = YY_G(yy_hold_char);");

 if (fullspd || fulltbl)
  indent_puts ("yy_cp = YY_G(yy_last_accepting_cpos) + 1;");
 else



  indent_puts ("yy_cp = YY_G(yy_last_accepting_cpos);");

 indent_puts ("yy_current_state = YY_G(yy_last_accepting_state);");
 indent_puts ("goto yy_find_action;");
 outc ('\n');

 set_indent (0);
}
