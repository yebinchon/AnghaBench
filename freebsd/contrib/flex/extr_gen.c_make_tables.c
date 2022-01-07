
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yytbl_data {int td_lolen; int* td_data; int td_flags; } ;
typedef int flex_int32_t ;


 scalar_t__ C_plus_plus ;
 int INT16_MAX ;
 int OUT_BEGIN_CODE () ;
 int OUT_END_CODE () ;
 int YYTD_ID_NUL_TRANS ;
 int YYTD_PTRANS ;
 scalar_t__ YY_TRAILING_HEAD_MASK ;
 scalar_t__ YY_TRAILING_MASK ;
 int _ (char*) ;
 int * action_array ;
 size_t action_offset ;
 int* base ;
 scalar_t__ bol_needed ;
 int buf_prints (int *,char*,char*) ;
 scalar_t__ calloc (int,int) ;
 int dataend () ;
 scalar_t__ ddebug ;
 size_t defs1_offset ;
 int do_indent () ;
 scalar_t__ do_yylineno ;
 int flexerror (int ) ;
 int flexscan () ;
 scalar_t__ fullspd ;
 scalar_t__ fulltbl ;
 int gen_NUL_trans () ;
 int gen_bu_action () ;
 int gen_find_action () ;
 int gen_next_match () ;
 int gen_next_state (int) ;
 int gen_start_state () ;
 int genctbl () ;
 int geneoltbl () ;
 int genftbl () ;
 int gentabs () ;
 int get_int16_decl () ;
 int get_int32_decl () ;
 int get_state_decl () ;
 int indent_down () ;
 int indent_put2s (char*,char*) ;
 int indent_puts (char*) ;
 int indent_up () ;
 int interactive ;
 int lastdfa ;
 int lastsc ;
 int line_directive_out (int ,int) ;
 scalar_t__ long_align ;
 struct yytbl_data* mkctbl () ;
 int mkdata (int) ;
 struct yytbl_data* mkecstbl () ;
 struct yytbl_data* mkeoltbl () ;
 struct yytbl_data* mkftbl () ;
 struct yytbl_data* mkssltbl () ;
 int* nultrans ;
 scalar_t__ num_backing_up ;
 int num_rules ;
 int numecs ;
 int out (int *) ;
 int out_dec (char*,int) ;
 int out_hex (char*,unsigned int) ;
 int out_str (char*,char*) ;
 int out_str_dec (int ,char*,int) ;
 int outn (char*) ;
 size_t prolog_offset ;
 int reentrant ;
 scalar_t__ reject ;
 int* rule_linenum ;
 int * sceof ;
 char** scname ;
 int sectnum ;
 int set_indent (int) ;
 int skelout () ;
 int stdout ;
 scalar_t__ tablesext ;
 int tableswr ;
 int tblend ;
 scalar_t__ use_read ;
 scalar_t__ useecs ;
 scalar_t__ variable_trailing_context_rules ;
 int yydmap_buf ;
 scalar_t__ yymore_used ;
 int yytbl_data_compress (struct yytbl_data*) ;
 int yytbl_data_destroy (struct yytbl_data*) ;
 scalar_t__ yytbl_data_fwrite (int *,struct yytbl_data*) ;
 int yytbl_data_init (struct yytbl_data*,int ) ;
 scalar_t__ yytext_is_array ;

void make_tables ()
{
 int i;
 int did_eof_rule = 0;
 struct yytbl_data *yynultrans_tbl;


 skelout ();




 set_indent (1);

 if (yymore_used && !yytext_is_array) {
  indent_puts ("YY_G(yytext_ptr) -= YY_G(yy_more_len); \\");
  indent_puts
   ("yyleng = (size_t) (yy_cp - YY_G(yytext_ptr)); \\");
 }

 else
  indent_puts ("yyleng = (size_t) (yy_cp - yy_bp); \\");


 skelout ();
 if (yytext_is_array) {
  if (yymore_used)
   indent_puts
    ("if ( yyleng + YY_G(yy_more_offset) >= YYLMAX ) \\");
  else
   indent_puts ("if ( yyleng >= YYLMAX ) \\");

  indent_up ();
  indent_puts
   ("YY_FATAL_ERROR( \"token too large, exceeds YYLMAX\" ); \\");
  indent_down ();

  if (yymore_used) {
   indent_puts
    ("yy_flex_strncpy( &yytext[YY_G(yy_more_offset)], YY_G(yytext_ptr), yyleng + 1 M4_YY_CALL_LAST_ARG); \\");
   indent_puts ("yyleng += YY_G(yy_more_offset); \\");
   indent_puts
    ("YY_G(yy_prev_more_offset) = YY_G(yy_more_offset); \\");
   indent_puts ("YY_G(yy_more_offset) = 0; \\");
  }
  else {
   indent_puts
    ("yy_flex_strncpy( yytext, YY_G(yytext_ptr), yyleng + 1 M4_YY_CALL_LAST_ARG); \\");
  }
 }

 set_indent (0);

 skelout ();




 out_dec ("#define YY_NUM_RULES %d\n", num_rules);
 out_dec ("#define YY_END_OF_BUFFER %d\n", num_rules + 1);

 if (fullspd) {



  int total_table_size = tblend + numecs + 1;
  char *trans_offset_type =
   (total_table_size >= INT16_MAX || long_align) ?
   "flex_int32_t" : "flex_int16_t";

  set_indent (0);
  indent_puts ("struct yy_trans_info");
  indent_up ();
  indent_puts ("{");


  indent_put2s ("%s yy_verify;", trans_offset_type);
  indent_put2s ("%s yy_nxt;", trans_offset_type);
  indent_puts ("};");
  indent_down ();
 }
 else {





  indent_puts
   ("/* This struct is not used in this scanner,");
  indent_puts ("   but its presence is necessary. */");
  indent_puts ("struct yy_trans_info");
  indent_up ();
  indent_puts ("{");
  indent_puts ("flex_int32_t yy_verify;");
  indent_puts ("flex_int32_t yy_nxt;");
  indent_puts ("};");
  indent_down ();
 }

 if (fullspd) {
  genctbl ();
  if (tablesext) {
   struct yytbl_data *tbl;

   tbl = mkctbl ();
   yytbl_data_compress (tbl);
   if (yytbl_data_fwrite (&tableswr, tbl) < 0)
    flexerror (_("Could not write ftbl"));
   yytbl_data_destroy (tbl);

   tbl = mkssltbl ();
   yytbl_data_compress (tbl);
   if (yytbl_data_fwrite (&tableswr, tbl) < 0)
    flexerror (_("Could not write ssltbl"));
   yytbl_data_destroy (tbl);
   tbl = 0;

   if (useecs) {
    tbl = mkecstbl ();
    yytbl_data_compress (tbl);
    if (yytbl_data_fwrite (&tableswr, tbl) < 0)
     flexerror (_
         ("Could not write ecstbl"));
    yytbl_data_destroy (tbl);
    tbl = 0;
   }
  }
 }
 else if (fulltbl) {
  genftbl ();
  if (tablesext) {
   struct yytbl_data *tbl;

   tbl = mkftbl ();
   yytbl_data_compress (tbl);
   if (yytbl_data_fwrite (&tableswr, tbl) < 0)
    flexerror (_("Could not write ftbl"));
   yytbl_data_destroy (tbl);
   tbl = 0;

   if (useecs) {
    tbl = mkecstbl ();
    yytbl_data_compress (tbl);
    if (yytbl_data_fwrite (&tableswr, tbl) < 0)
     flexerror (_
         ("Could not write ecstbl"));
    yytbl_data_destroy (tbl);
    tbl = 0;
   }
  }
 }
 else
  gentabs ();

 if (do_yylineno) {

  geneoltbl ();

  if (tablesext) {
   struct yytbl_data *tbl;

   tbl = mkeoltbl ();
   yytbl_data_compress (tbl);
   if (yytbl_data_fwrite (&tableswr, tbl) < 0)
    flexerror (_("Could not write eoltbl"));
   yytbl_data_destroy (tbl);
   tbl = 0;
  }
 }





 if (num_backing_up > 0 && !reject) {
  if (!C_plus_plus && !reentrant) {
   indent_puts
    ("static yy_state_type yy_last_accepting_state;");
   indent_puts
    ("static char *yy_last_accepting_cpos;\n");
  }
 }

 if (nultrans) {
  flex_int32_t *yynultrans_data = 0;


  out_str_dec (get_state_decl (), "yy_NUL_trans",
        lastdfa + 1);
  buf_prints (&yydmap_buf,
       "\t{YYTD_ID_NUL_TRANS, (void**)&yy_NUL_trans, sizeof(%s)},\n",
       (fullspd) ? "struct yy_trans_info*" :
       "flex_int32_t");

  yynultrans_tbl =
   (struct yytbl_data *) calloc (1,
            sizeof (struct
             yytbl_data));
  yytbl_data_init (yynultrans_tbl, YYTD_ID_NUL_TRANS);
  if (fullspd)
   yynultrans_tbl->td_flags |= YYTD_PTRANS;
  yynultrans_tbl->td_lolen = lastdfa + 1;
  yynultrans_tbl->td_data = yynultrans_data =
   (flex_int32_t *) calloc (yynultrans_tbl->td_lolen,
         sizeof (flex_int32_t));

  for (i = 1; i <= lastdfa; ++i) {
   if (fullspd) {
    out_dec ("    &yy_transition[%d],\n",
      base[i]);
    yynultrans_data[i] = base[i];
   }
   else {
    mkdata (nultrans[i]);
    yynultrans_data[i] = nultrans[i];
   }
  }

  dataend ();
  if (tablesext) {
   yytbl_data_compress (yynultrans_tbl);
   if (yytbl_data_fwrite (&tableswr, yynultrans_tbl) <
       0)
    flexerror (_
        ("Could not write yynultrans_tbl"));
   yytbl_data_destroy (yynultrans_tbl);
   yynultrans_tbl = ((void*)0);
  }

 }

 if (!C_plus_plus && !reentrant) {
  indent_puts ("extern int yy_flex_debug;");
  indent_put2s ("int yy_flex_debug = %s;\n",
         ddebug ? "1" : "0");
 }

 if (ddebug) {
  out_str_dec (long_align ? get_int32_decl () :
        get_int16_decl (), "yy_rule_linenum",
        num_rules);
  for (i = 1; i < num_rules; ++i)
   mkdata (rule_linenum[i]);
  dataend ();
 }

 if (reject) {
  outn ("m4_ifdef( [[M4_YY_USES_REJECT]],\n[[");

  if (!C_plus_plus && !reentrant) {
   outn ("static yy_state_type *yy_state_buf=0, *yy_state_ptr=0;");
   outn ("static char *yy_full_match;");
   outn ("static int yy_lp;");
  }

  if (variable_trailing_context_rules) {
   if (!C_plus_plus && !reentrant) {
    outn ("static int yy_looking_for_trail_begin = 0;");
    outn ("static int yy_full_lp;");
    outn ("static int *yy_full_state;");
   }

   out_hex ("#define YY_TRAILING_MASK 0x%x\n",
     (unsigned int) YY_TRAILING_MASK);
   out_hex ("#define YY_TRAILING_HEAD_MASK 0x%x\n",
     (unsigned int) YY_TRAILING_HEAD_MASK);
  }

  outn ("#define REJECT \\");
  outn ("{ \\");
  outn ("*yy_cp = YY_G(yy_hold_char); /* undo effects of setting up yytext */ \\");
  outn ("yy_cp = YY_G(yy_full_match); /* restore poss. backed-over text */ \\");

  if (variable_trailing_context_rules) {
   outn ("YY_G(yy_lp) = YY_G(yy_full_lp); /* restore orig. accepting pos. */ \\");
   outn ("YY_G(yy_state_ptr) = YY_G(yy_full_state); /* restore orig. state */ \\");
   outn ("yy_current_state = *YY_G(yy_state_ptr); /* restore curr. state */ \\");
  }

  outn ("++YY_G(yy_lp); \\");
  outn ("goto find_rule; \\");

  outn ("}");
  outn ("]])\n");
 }

 else {
  outn ("/* The intent behind this definition is that it'll catch");
  outn (" * any uses of REJECT which flex missed.");
  outn (" */");
  outn ("#define REJECT reject_used_but_not_detected");
 }

 if (yymore_used) {
  if (!C_plus_plus) {
   if (yytext_is_array) {
    if (!reentrant){
        indent_puts ("static int yy_more_offset = 0;");
                    indent_puts ("static int yy_prev_more_offset = 0;");
                }
   }
   else if (!reentrant) {
    indent_puts
     ("static int yy_more_flag = 0;");
    indent_puts
     ("static int yy_more_len = 0;");
   }
  }

  if (yytext_is_array) {
   indent_puts
    ("#define yymore() (YY_G(yy_more_offset) = yy_flex_strlen( yytext M4_YY_CALL_LAST_ARG))");
   indent_puts ("#define YY_NEED_STRLEN");
   indent_puts ("#define YY_MORE_ADJ 0");
   indent_puts
    ("#define YY_RESTORE_YY_MORE_OFFSET \\");
   indent_up ();
   indent_puts ("{ \\");
   indent_puts
    ("YY_G(yy_more_offset) = YY_G(yy_prev_more_offset); \\");
   indent_puts ("yyleng -= YY_G(yy_more_offset); \\");
   indent_puts ("}");
   indent_down ();
  }
  else {
   indent_puts
    ("#define yymore() (YY_G(yy_more_flag) = 1)");
   indent_puts
    ("#define YY_MORE_ADJ YY_G(yy_more_len)");
   indent_puts ("#define YY_RESTORE_YY_MORE_OFFSET");
  }
 }

 else {
  indent_puts
   ("#define yymore() yymore_used_but_not_detected");
  indent_puts ("#define YY_MORE_ADJ 0");
  indent_puts ("#define YY_RESTORE_YY_MORE_OFFSET");
 }

 if (!C_plus_plus) {
  if (yytext_is_array) {
   outn ("#ifndef YYLMAX");
   outn ("#define YYLMAX 8192");
   outn ("#endif\n");
   if (!reentrant){
                outn ("char yytext[YYLMAX];");
                outn ("char *yytext_ptr;");
            }
  }

  else {
   if(! reentrant)
                outn ("char *yytext;");
  }
 }

 out (&action_array[defs1_offset]);

 line_directive_out (stdout, 0);

 skelout ();

 if (!C_plus_plus) {
  if (use_read) {
   outn ("\terrno=0; \\");
   outn ("\twhile ( (result = read( fileno(yyin), (char *) buf, max_size )) < 0 ) \\");
   outn ("\t{ \\");
   outn ("\t\tif( errno != EINTR) \\");
   outn ("\t\t{ \\");
   outn ("\t\t\tYY_FATAL_ERROR( \"input in flex scanner failed\" ); \\");
   outn ("\t\t\tbreak; \\");
   outn ("\t\t} \\");
   outn ("\t\terrno=0; \\");
   outn ("\t\tclearerr(yyin); \\");
   outn ("\t}\\");
  }

  else {
   outn ("\tif ( YY_CURRENT_BUFFER_LVALUE->yy_is_interactive ) \\");
   outn ("\t\t{ \\");
   outn ("\t\tint c = '*'; \\");
   outn ("\t\tsize_t n; \\");
   outn ("\t\tfor ( n = 0; n < max_size && \\");
   outn ("\t\t\t     (c = getc( yyin )) != EOF && c != '\\n'; ++n ) \\");
   outn ("\t\t\tbuf[n] = (char) c; \\");
   outn ("\t\tif ( c == '\\n' ) \\");
   outn ("\t\t\tbuf[n++] = (char) c; \\");
   outn ("\t\tif ( c == EOF && ferror( yyin ) ) \\");
   outn ("\t\t\tYY_FATAL_ERROR( \"input in flex scanner failed\" ); \\");
   outn ("\t\tresult = n; \\");
   outn ("\t\t} \\");
   outn ("\telse \\");
   outn ("\t\t{ \\");
   outn ("\t\terrno=0; \\");
   outn ("\t\twhile ( (result = fread(buf, 1, max_size, yyin))==0 && ferror(yyin)) \\");
   outn ("\t\t\t{ \\");
   outn ("\t\t\tif( errno != EINTR) \\");
   outn ("\t\t\t\t{ \\");
   outn ("\t\t\t\tYY_FATAL_ERROR( \"input in flex scanner failed\" ); \\");
   outn ("\t\t\t\tbreak; \\");
   outn ("\t\t\t\t} \\");
   outn ("\t\t\terrno=0; \\");
   outn ("\t\t\tclearerr(yyin); \\");
   outn ("\t\t\t} \\");
   outn ("\t\t}\\");
  }
 }

 skelout ();

 indent_puts ("#define YY_RULE_SETUP \\");
 indent_up ();
 if (bol_needed) {
  indent_puts ("if ( yyleng > 0 ) \\");
  indent_up ();
  indent_puts ("YY_CURRENT_BUFFER_LVALUE->yy_at_bol = \\");
  indent_puts ("\t\t(yytext[yyleng - 1] == '\\n'); \\");
  indent_down ();
 }
 indent_puts ("YY_USER_ACTION");
 indent_down ();

 skelout ();


 out (&action_array[prolog_offset]);

 line_directive_out (stdout, 0);

 skelout ();

 set_indent (2);

 if (yymore_used && !yytext_is_array) {
  indent_puts ("YY_G(yy_more_len) = 0;");
  indent_puts ("if ( YY_G(yy_more_flag) )");
  indent_up ();
  indent_puts ("{");
  indent_puts
   ("YY_G(yy_more_len) = YY_G(yy_c_buf_p) - YY_G(yytext_ptr);");
  indent_puts ("YY_G(yy_more_flag) = 0;");
  indent_puts ("}");
  indent_down ();
 }

 skelout ();

 gen_start_state ();


 outn ("yy_match:");
 gen_next_match ();

 skelout ();
 set_indent (2);
 gen_find_action ();

 skelout ();
 outn ("m4_ifdef( [[M4_YY_USE_LINENO]],[[");
 indent_puts
  ("if ( yy_act != YY_END_OF_BUFFER && yy_rule_can_match_eol[yy_act] )");
 indent_up ();
 indent_puts ("{");
 indent_puts ("yy_size_t yyl;");
 do_indent ();
 out_str ("for ( yyl = %s; yyl < yyleng; ++yyl )\n",
   yymore_used ? (yytext_is_array ? "YY_G(yy_prev_more_offset)" :
    "YY_G(yy_more_len)") : "0");
 indent_up ();
 indent_puts ("if ( yytext[yyl] == '\\n' )");
 indent_up ();
 indent_puts ("M4_YY_INCR_LINENO();");
 indent_down ();
 indent_down ();
 indent_puts ("}");
 indent_down ();
 outn ("]])");

 skelout ();
 if (ddebug) {
  indent_puts ("if ( yy_flex_debug )");
  indent_up ();

  indent_puts ("{");
  indent_puts ("if ( yy_act == 0 )");
  indent_up ();
  indent_puts (C_plus_plus ?
        "std::cerr << \"--scanner backing up\\n\";" :
        "fprintf( stderr, \"--scanner backing up\\n\" );");
  indent_down ();

  do_indent ();
  out_dec ("else if ( yy_act < %d )\n", num_rules);
  indent_up ();

  if (C_plus_plus) {
   indent_puts
    ("std::cerr << \"--accepting rule at line \" << yy_rule_linenum[yy_act] <<");
   indent_puts
    ("         \"(\\\"\" << yytext << \"\\\")\\n\";");
  }
  else {
   indent_puts
    ("fprintf( stderr, \"--accepting rule at line %ld (\\\"%s\\\")\\n\",");

   indent_puts
    ("         (long)yy_rule_linenum[yy_act], yytext );");
  }

  indent_down ();

  do_indent ();
  out_dec ("else if ( yy_act == %d )\n", num_rules);
  indent_up ();

  if (C_plus_plus) {
   indent_puts
    ("std::cerr << \"--accepting default rule (\\\"\" << yytext << \"\\\")\\n\";");
  }
  else {
   indent_puts
    ("fprintf( stderr, \"--accepting default rule (\\\"%s\\\")\\n\",");
   indent_puts ("         yytext );");
  }

  indent_down ();

  do_indent ();
  out_dec ("else if ( yy_act == %d )\n", num_rules + 1);
  indent_up ();

  indent_puts (C_plus_plus ?
        "std::cerr << \"--(end of buffer or a NUL)\\n\";" :
        "fprintf( stderr, \"--(end of buffer or a NUL)\\n\" );");

  indent_down ();

  do_indent ();
  outn ("else");
  indent_up ();

  if (C_plus_plus) {
   indent_puts
    ("std::cerr << \"--EOF (start condition \" << YY_START << \")\\n\";");
  }
  else {
   indent_puts
    ("fprintf( stderr, \"--EOF (start condition %d)\\n\", YY_START );");
  }

  indent_down ();

  indent_puts ("}");
  indent_down ();
 }


 skelout ();
 indent_up ();
 gen_bu_action ();
 out (&action_array[action_offset]);

 line_directive_out (stdout, 0);


 for (i = 1; i <= lastsc; ++i)
  if (!sceof[i]) {
   do_indent ();
   out_str ("case YY_STATE_EOF(%s):\n", scname[i]);
   did_eof_rule = 1;
  }

 if (did_eof_rule) {
  indent_up ();
  indent_puts ("yyterminate();");
  indent_down ();
 }







 skelout ();
 set_indent (4);

 if (fullspd || fulltbl)
  indent_puts ("yy_cp = YY_G(yy_c_buf_p);");

 else {
  if (!reject && !interactive) {



   indent_puts
    ("yy_cp = YY_G(yy_last_accepting_cpos);");
   indent_puts
    ("yy_current_state = YY_G(yy_last_accepting_state);");
  }

  else




   indent_puts ("yy_cp = YY_G(yy_c_buf_p);");
 }



 set_indent (1);
 skelout ();

 gen_start_state ();

 set_indent (2);
 skelout ();
 gen_next_state (1);

 set_indent (1);
 skelout ();
 gen_NUL_trans ();

 skelout ();
 skelout ();

 if (bol_needed) {
  indent_puts
   ("YY_CURRENT_BUFFER_LVALUE->yy_at_bol = (c == '\\n');");
  if (do_yylineno) {
   indent_puts
    ("if ( YY_CURRENT_BUFFER_LVALUE->yy_at_bol )");
   indent_up ();
   indent_puts ("M4_YY_INCR_LINENO();");
   indent_down ();
  }
 }

 else if (do_yylineno) {
  indent_puts ("if ( c == '\\n' )");
  indent_up ();
  indent_puts ("M4_YY_INCR_LINENO();");
  indent_down ();
 }

 skelout ();



 line_directive_out (stdout, 1);

 if (sectnum == 3) {
  OUT_BEGIN_CODE ();
  (void) flexscan ();
  OUT_END_CODE ();
 }
}
