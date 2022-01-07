
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ bol_needed ;
 scalar_t__ fullspd ;
 int indent_puts (char*) ;
 int outn (char*) ;
 scalar_t__ reject ;

void gen_start_state ()
{
 if (fullspd) {
  if (bol_needed) {
   indent_puts
    ("yy_current_state = yy_start_state_list[YY_G(yy_start) + YY_AT_BOL()];");
  }
  else
   indent_puts
    ("yy_current_state = yy_start_state_list[YY_G(yy_start)];");
 }

 else {
  indent_puts ("yy_current_state = YY_G(yy_start);");

  if (bol_needed)
   indent_puts ("yy_current_state += YY_AT_BOL();");

  if (reject) {

   outn ("m4_ifdef( [[M4_YY_USES_REJECT]],\n[[");
   indent_puts
    ("YY_G(yy_state_ptr) = YY_G(yy_state_buf);");
   indent_puts
    ("*YY_G(yy_state_ptr)++ = yy_current_state;");
   outn ("]])");
  }
 }
}
