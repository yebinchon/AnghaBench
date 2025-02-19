
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_indent () ;
 scalar_t__ fullspd ;
 scalar_t__ fulltbl ;
 int gen_backing_up () ;
 int gen_next_state (int) ;
 scalar_t__ gentables ;
 int indent_down () ;
 int indent_put2s (char*,char*) ;
 int indent_puts (char*) ;
 int indent_up () ;
 scalar_t__ interactive ;
 int jambase ;
 int jamstate ;
 scalar_t__ num_backing_up ;
 int out_dec (char*,int ) ;
 int outc (char) ;
 int reject ;
 scalar_t__ useecs ;

void gen_next_match ()
{



 char *char_map = useecs ?
  "yy_ec[YY_SC_TO_UI(*yy_cp)] " : "YY_SC_TO_UI(*yy_cp)";

 char *char_map_2 = useecs ?
  "yy_ec[YY_SC_TO_UI(*++yy_cp)] " : "YY_SC_TO_UI(*++yy_cp)";

 if (fulltbl) {
  if (gentables)
   indent_put2s
    ("while ( (yy_current_state = yy_nxt[yy_current_state][ %s ]) > 0 )",
     char_map);
  else
   indent_put2s
    ("while ( (yy_current_state = yy_nxt[yy_current_state*YY_NXT_LOLEN +  %s ]) > 0 )",
     char_map);

  indent_up ();

  if (num_backing_up > 0) {
   indent_puts ("{");
   gen_backing_up ();
   outc ('\n');
  }

  indent_puts ("++yy_cp;");

  if (num_backing_up > 0)

   indent_puts ("}");

  indent_down ();

  outc ('\n');
  indent_puts ("yy_current_state = -yy_current_state;");
 }

 else if (fullspd) {
  indent_puts ("{");
  indent_puts
   ("yyconst struct yy_trans_info *yy_trans_info;\n");
  indent_puts ("YY_CHAR yy_c;\n");
  indent_put2s ("for ( yy_c = %s;", char_map);
  indent_puts
   ("      (yy_trans_info = &yy_current_state[(unsigned int) yy_c])->");
  indent_puts ("yy_verify == yy_c;");
  indent_put2s ("      yy_c = %s )", char_map_2);

  indent_up ();

  if (num_backing_up > 0)
   indent_puts ("{");

  indent_puts ("yy_current_state += yy_trans_info->yy_nxt;");

  if (num_backing_up > 0) {
   outc ('\n');
   gen_backing_up ();
   indent_puts ("}");
  }

  indent_down ();
  indent_puts ("}");
 }

 else {
  indent_puts ("do");

  indent_up ();
  indent_puts ("{");

  gen_next_state (0);

  indent_puts ("++yy_cp;");


  indent_puts ("}");
  indent_down ();

  do_indent ();

  if (interactive)
   out_dec ("while ( yy_base[yy_current_state] != %d );\n", jambase);
  else
   out_dec ("while ( yy_current_state != %d );\n",
     jamstate);

  if (!reject && !interactive) {



   indent_puts
    ("yy_cp = YY_G(yy_last_accepting_cpos);");
   indent_puts
    ("yy_current_state = YY_G(yy_last_accepting_state);");
  }
 }
}
