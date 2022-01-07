
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ fullspd ;
 int indent_down () ;
 int indent_puts (char*) ;
 int indent_up () ;
 scalar_t__ num_backing_up ;
 scalar_t__ reject ;

void gen_backing_up ()
{
 if (reject || num_backing_up == 0)
  return;

 if (fullspd)
  indent_puts ("if ( yy_current_state[-1].yy_nxt )");
 else
  indent_puts ("if ( yy_accept[yy_current_state] )");

 indent_up ();
 indent_puts ("{");
 indent_puts ("YY_G(yy_last_accepting_state) = yy_current_state;");
 indent_puts ("YY_G(yy_last_accepting_cpos) = yy_cp;");
 indent_puts ("}");
 indent_down ();
}
