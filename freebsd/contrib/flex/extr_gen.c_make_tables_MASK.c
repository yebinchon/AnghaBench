#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct yytbl_data {int td_lolen; int* td_data; int /*<<< orphan*/  td_flags; } ;
typedef  int flex_int32_t ;

/* Variables and functions */
 scalar_t__ C_plus_plus ; 
 int INT16_MAX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  YYTD_ID_NUL_TRANS ; 
 int /*<<< orphan*/  YYTD_PTRANS ; 
 scalar_t__ YY_TRAILING_HEAD_MASK ; 
 scalar_t__ YY_TRAILING_MASK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * action_array ; 
 size_t action_offset ; 
 int* base ; 
 scalar_t__ bol_needed ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ ddebug ; 
 size_t defs1_offset ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ do_yylineno ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ fullspd ; 
 scalar_t__ fulltbl ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (char*,char*) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  interactive ; 
 int lastdfa ; 
 int lastsc ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ long_align ; 
 struct yytbl_data* FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (int) ; 
 struct yytbl_data* FUNC29 () ; 
 struct yytbl_data* FUNC30 () ; 
 struct yytbl_data* FUNC31 () ; 
 struct yytbl_data* FUNC32 () ; 
 int* nultrans ; 
 scalar_t__ num_backing_up ; 
 int num_rules ; 
 int numecs ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (char*,int) ; 
 int /*<<< orphan*/  FUNC35 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC36 (char*,char*) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC38 (char*) ; 
 size_t prolog_offset ; 
 int /*<<< orphan*/  reentrant ; 
 scalar_t__ reject ; 
 int* rule_linenum ; 
 int /*<<< orphan*/ * sceof ; 
 char** scname ; 
 int sectnum ; 
 int /*<<< orphan*/  FUNC39 (int) ; 
 int /*<<< orphan*/  FUNC40 () ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ tablesext ; 
 int /*<<< orphan*/  tableswr ; 
 int tblend ; 
 scalar_t__ use_read ; 
 scalar_t__ useecs ; 
 scalar_t__ variable_trailing_context_rules ; 
 int /*<<< orphan*/  yydmap_buf ; 
 scalar_t__ yymore_used ; 
 int /*<<< orphan*/  FUNC41 (struct yytbl_data*) ; 
 int /*<<< orphan*/  FUNC42 (struct yytbl_data*) ; 
 scalar_t__ FUNC43 (int /*<<< orphan*/ *,struct yytbl_data*) ; 
 int /*<<< orphan*/  FUNC44 (struct yytbl_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ yytext_is_array ; 

void FUNC45 ()
{
	int i;
	int     did_eof_rule = false;
	struct yytbl_data *yynultrans_tbl;


	FUNC40 ();		/* %% [2.0] - break point in skel */

	/* First, take care of YY_DO_BEFORE_ACTION depending on yymore
	 * being used.
	 */
	FUNC39 (1);

	if (yymore_used && !yytext_is_array) {
		FUNC24 ("YY_G(yytext_ptr) -= YY_G(yy_more_len); \\");
		FUNC24
			("yyleng = (size_t) (yy_cp - YY_G(yytext_ptr)); \\");
	}

	else
		FUNC24 ("yyleng = (size_t) (yy_cp - yy_bp); \\");

	/* Now also deal with copying yytext_ptr to yytext if needed. */
	FUNC40 ();		/* %% [3.0] - break point in skel */
	if (yytext_is_array) {
		if (yymore_used)
			FUNC24
				("if ( yyleng + YY_G(yy_more_offset) >= YYLMAX ) \\");
		else
			FUNC24 ("if ( yyleng >= YYLMAX ) \\");

		FUNC25 ();
		FUNC24
			("YY_FATAL_ERROR( \"token too large, exceeds YYLMAX\" ); \\");
		FUNC22 ();

		if (yymore_used) {
			FUNC24
				("yy_flex_strncpy( &yytext[YY_G(yy_more_offset)], YY_G(yytext_ptr), yyleng + 1 M4_YY_CALL_LAST_ARG); \\");
			FUNC24 ("yyleng += YY_G(yy_more_offset); \\");
			FUNC24
				("YY_G(yy_prev_more_offset) = YY_G(yy_more_offset); \\");
			FUNC24 ("YY_G(yy_more_offset) = 0; \\");
		}
		else {
			FUNC24
				("yy_flex_strncpy( yytext, YY_G(yytext_ptr), yyleng + 1 M4_YY_CALL_LAST_ARG); \\");
		}
	}

	FUNC39 (0);

	FUNC40 ();		/* %% [4.0] - break point in skel */


	/* This is where we REALLY begin generating the tables. */

	FUNC34 ("#define YY_NUM_RULES %d\n", num_rules);
	FUNC34 ("#define YY_END_OF_BUFFER %d\n", num_rules + 1);

	if (fullspd) {
		/* Need to define the transet type as a size large
		 * enough to hold the biggest offset.
		 */
		int     total_table_size = tblend + numecs + 1;
		char   *trans_offset_type =
			(total_table_size >= INT16_MAX || long_align) ?
			"flex_int32_t" : "flex_int16_t";

		FUNC39 (0);
		FUNC24 ("struct yy_trans_info");
		FUNC25 ();
		FUNC24 ("{");

		/* We require that yy_verify and yy_nxt must be of the same size int. */
		FUNC23 ("%s yy_verify;", trans_offset_type);

		/* In cases where its sister yy_verify *is* a "yes, there is
		 * a transition", yy_nxt is the offset (in records) to the
		 * next state.  In most cases where there is no transition,
		 * the value of yy_nxt is irrelevant.  If yy_nxt is the -1th
		 * record of a state, though, then yy_nxt is the action number
		 * for that state.
		 */

		FUNC23 ("%s yy_nxt;", trans_offset_type);
		FUNC24 ("};");
		FUNC22 ();
	}
	else {
		/* We generate a bogus 'struct yy_trans_info' data type
		 * so we can guarantee that it is always declared in the skel.
		 * This is so we can compile "sizeof(struct yy_trans_info)"
		 * in any scanner.
		 */
		FUNC24
			("/* This struct is not used in this scanner,");
		FUNC24 ("   but its presence is necessary. */");
		FUNC24 ("struct yy_trans_info");
		FUNC25 ();
		FUNC24 ("{");
		FUNC24 ("flex_int32_t yy_verify;");
		FUNC24 ("flex_int32_t yy_nxt;");
		FUNC24 ("};");
		FUNC22 ();
	}

	if (fullspd) {
		FUNC15 ();
		if (tablesext) {
			struct yytbl_data *tbl;

			tbl = FUNC27 ();
			FUNC41 (tbl);
			if (FUNC43 (&tableswr, tbl) < 0)
				FUNC7 (FUNC2("Could not write ftbl"));
			FUNC42 (tbl);

			tbl = FUNC32 ();
			FUNC41 (tbl);
			if (FUNC43 (&tableswr, tbl) < 0)
				FUNC7 (FUNC2("Could not write ssltbl"));
			FUNC42 (tbl);
			tbl = 0;

			if (useecs) {
				tbl = FUNC29 ();
				FUNC41 (tbl);
				if (FUNC43 (&tableswr, tbl) < 0)
					FUNC7 (FUNC2
						   ("Could not write ecstbl"));
				FUNC42 (tbl);
				tbl = 0;
			}
		}
	}
	else if (fulltbl) {
		FUNC17 ();
		if (tablesext) {
			struct yytbl_data *tbl;

			tbl = FUNC31 ();
			FUNC41 (tbl);
			if (FUNC43 (&tableswr, tbl) < 0)
				FUNC7 (FUNC2("Could not write ftbl"));
			FUNC42 (tbl);
			tbl = 0;

			if (useecs) {
				tbl = FUNC29 ();
				FUNC41 (tbl);
				if (FUNC43 (&tableswr, tbl) < 0)
					FUNC7 (FUNC2
						   ("Could not write ecstbl"));
				FUNC42 (tbl);
				tbl = 0;
			}
		}
	}
	else
		FUNC18 ();

	if (do_yylineno) {

		FUNC16 ();

		if (tablesext) {
			struct yytbl_data *tbl;

			tbl = FUNC30 ();
			FUNC41 (tbl);
			if (FUNC43 (&tableswr, tbl) < 0)
				FUNC7 (FUNC2("Could not write eoltbl"));
			FUNC42 (tbl);
			tbl = 0;
		}
	}

	/* Definitions for backing up.  We don't need them if REJECT
	 * is being used because then we use an alternative backin-up
	 * technique instead.
	 */
	if (num_backing_up > 0 && !reject) {
		if (!C_plus_plus && !reentrant) {
			FUNC24
				("static yy_state_type yy_last_accepting_state;");
			FUNC24
				("static char *yy_last_accepting_cpos;\n");
		}
	}

	if (nultrans) {
		flex_int32_t *yynultrans_data = 0;

		/* Begin generating yy_NUL_trans */
		FUNC37 (FUNC21 (), "yy_NUL_trans",
			     lastdfa + 1);
		FUNC3 (&yydmap_buf,
			    "\t{YYTD_ID_NUL_TRANS, (void**)&yy_NUL_trans, sizeof(%s)},\n",
			    (fullspd) ? "struct yy_trans_info*" :
			    "flex_int32_t");

		yynultrans_tbl =
			(struct yytbl_data *) FUNC4 (1,
						      sizeof (struct
							      yytbl_data));
		FUNC44 (yynultrans_tbl, YYTD_ID_NUL_TRANS);
		if (fullspd)
			yynultrans_tbl->td_flags |= YYTD_PTRANS;
		yynultrans_tbl->td_lolen = lastdfa + 1;
		yynultrans_tbl->td_data = yynultrans_data =
			(flex_int32_t *) FUNC4 (yynultrans_tbl->td_lolen,
					    sizeof (flex_int32_t));

		for (i = 1; i <= lastdfa; ++i) {
			if (fullspd) {
				FUNC34 ("    &yy_transition[%d],\n",
					 base[i]);
				yynultrans_data[i] = base[i];
			}
			else {
				FUNC28 (nultrans[i]);
				yynultrans_data[i] = nultrans[i];
			}
		}

		FUNC5 ();
		if (tablesext) {
			FUNC41 (yynultrans_tbl);
			if (FUNC43 (&tableswr, yynultrans_tbl) <
			    0)
				FUNC7 (FUNC2
					   ("Could not write yynultrans_tbl"));
			FUNC42 (yynultrans_tbl);
			yynultrans_tbl = NULL;
		}
		/* End generating yy_NUL_trans */
	}

	if (!C_plus_plus && !reentrant) {
		FUNC24 ("extern int yy_flex_debug;");
		FUNC23 ("int yy_flex_debug = %s;\n",
			      ddebug ? "1" : "0");
	}

	if (ddebug) {		/* Spit out table mapping rules to line numbers. */
		FUNC37 (long_align ? FUNC20 () :
			     FUNC19 (), "yy_rule_linenum",
			     num_rules);
		for (i = 1; i < num_rules; ++i)
			FUNC28 (rule_linenum[i]);
		FUNC5 ();
	}

	if (reject) {
		FUNC38 ("m4_ifdef( [[M4_YY_USES_REJECT]],\n[[");
		/* Declare state buffer variables. */
		if (!C_plus_plus && !reentrant) {
			FUNC38 ("static yy_state_type *yy_state_buf=0, *yy_state_ptr=0;");
			FUNC38 ("static char *yy_full_match;");
			FUNC38 ("static int yy_lp;");
		}

		if (variable_trailing_context_rules) {
			if (!C_plus_plus && !reentrant) {
				FUNC38 ("static int yy_looking_for_trail_begin = 0;");
				FUNC38 ("static int yy_full_lp;");
				FUNC38 ("static int *yy_full_state;");
			}

			FUNC35 ("#define YY_TRAILING_MASK 0x%x\n",
				 (unsigned int) YY_TRAILING_MASK);
			FUNC35 ("#define YY_TRAILING_HEAD_MASK 0x%x\n",
				 (unsigned int) YY_TRAILING_HEAD_MASK);
		}

		FUNC38 ("#define REJECT \\");
		FUNC38 ("{ \\");
		FUNC38 ("*yy_cp = YY_G(yy_hold_char); /* undo effects of setting up yytext */ \\");
		FUNC38 ("yy_cp = YY_G(yy_full_match); /* restore poss. backed-over text */ \\");

		if (variable_trailing_context_rules) {
			FUNC38 ("YY_G(yy_lp) = YY_G(yy_full_lp); /* restore orig. accepting pos. */ \\");
			FUNC38 ("YY_G(yy_state_ptr) = YY_G(yy_full_state); /* restore orig. state */ \\");
			FUNC38 ("yy_current_state = *YY_G(yy_state_ptr); /* restore curr. state */ \\");
		}

		FUNC38 ("++YY_G(yy_lp); \\");
		FUNC38 ("goto find_rule; \\");

		FUNC38 ("}");
		FUNC38 ("]])\n");
	}

	else {
		FUNC38 ("/* The intent behind this definition is that it'll catch");
		FUNC38 (" * any uses of REJECT which flex missed.");
		FUNC38 (" */");
		FUNC38 ("#define REJECT reject_used_but_not_detected");
	}

	if (yymore_used) {
		if (!C_plus_plus) {
			if (yytext_is_array) {
				if (!reentrant){
    				FUNC24 ("static int yy_more_offset = 0;");
                    FUNC24 ("static int yy_prev_more_offset = 0;");
                }
			}
			else if (!reentrant) {
				FUNC24
					("static int yy_more_flag = 0;");
				FUNC24
					("static int yy_more_len = 0;");
			}
		}

		if (yytext_is_array) {
			FUNC24
				("#define yymore() (YY_G(yy_more_offset) = yy_flex_strlen( yytext M4_YY_CALL_LAST_ARG))");
			FUNC24 ("#define YY_NEED_STRLEN");
			FUNC24 ("#define YY_MORE_ADJ 0");
			FUNC24
				("#define YY_RESTORE_YY_MORE_OFFSET \\");
			FUNC25 ();
			FUNC24 ("{ \\");
			FUNC24
				("YY_G(yy_more_offset) = YY_G(yy_prev_more_offset); \\");
			FUNC24 ("yyleng -= YY_G(yy_more_offset); \\");
			FUNC24 ("}");
			FUNC22 ();
		}
		else {
			FUNC24
				("#define yymore() (YY_G(yy_more_flag) = 1)");
			FUNC24
				("#define YY_MORE_ADJ YY_G(yy_more_len)");
			FUNC24 ("#define YY_RESTORE_YY_MORE_OFFSET");
		}
	}

	else {
		FUNC24
			("#define yymore() yymore_used_but_not_detected");
		FUNC24 ("#define YY_MORE_ADJ 0");
		FUNC24 ("#define YY_RESTORE_YY_MORE_OFFSET");
	}

	if (!C_plus_plus) {
		if (yytext_is_array) {
			FUNC38 ("#ifndef YYLMAX");
			FUNC38 ("#define YYLMAX 8192");
			FUNC38 ("#endif\n");
			if (!reentrant){
                FUNC38 ("char yytext[YYLMAX];");
                FUNC38 ("char *yytext_ptr;");
            }
		}

		else {
			if(! reentrant)
                FUNC38 ("char *yytext;");
		}
	}

	FUNC33 (&action_array[defs1_offset]);

	FUNC26 (stdout, 0);

	FUNC40 ();		/* %% [5.0] - break point in skel */

	if (!C_plus_plus) {
		if (use_read) {
			FUNC38 ("\terrno=0; \\");
			FUNC38 ("\twhile ( (result = read( fileno(yyin), (char *) buf, max_size )) < 0 ) \\");
			FUNC38 ("\t{ \\");
			FUNC38 ("\t\tif( errno != EINTR) \\");
			FUNC38 ("\t\t{ \\");
			FUNC38 ("\t\t\tYY_FATAL_ERROR( \"input in flex scanner failed\" ); \\");
			FUNC38 ("\t\t\tbreak; \\");
			FUNC38 ("\t\t} \\");
			FUNC38 ("\t\terrno=0; \\");
			FUNC38 ("\t\tclearerr(yyin); \\");
			FUNC38 ("\t}\\");
		}

		else {
			FUNC38 ("\tif ( YY_CURRENT_BUFFER_LVALUE->yy_is_interactive ) \\");
			FUNC38 ("\t\t{ \\");
			FUNC38 ("\t\tint c = '*'; \\");
			FUNC38 ("\t\tsize_t n; \\");
			FUNC38 ("\t\tfor ( n = 0; n < max_size && \\");
			FUNC38 ("\t\t\t     (c = getc( yyin )) != EOF && c != '\\n'; ++n ) \\");
			FUNC38 ("\t\t\tbuf[n] = (char) c; \\");
			FUNC38 ("\t\tif ( c == '\\n' ) \\");
			FUNC38 ("\t\t\tbuf[n++] = (char) c; \\");
			FUNC38 ("\t\tif ( c == EOF && ferror( yyin ) ) \\");
			FUNC38 ("\t\t\tYY_FATAL_ERROR( \"input in flex scanner failed\" ); \\");
			FUNC38 ("\t\tresult = n; \\");
			FUNC38 ("\t\t} \\");
			FUNC38 ("\telse \\");
			FUNC38 ("\t\t{ \\");
			FUNC38 ("\t\terrno=0; \\");
			FUNC38 ("\t\twhile ( (result = fread(buf, 1, max_size, yyin))==0 && ferror(yyin)) \\");
			FUNC38 ("\t\t\t{ \\");
			FUNC38 ("\t\t\tif( errno != EINTR) \\");
			FUNC38 ("\t\t\t\t{ \\");
			FUNC38 ("\t\t\t\tYY_FATAL_ERROR( \"input in flex scanner failed\" ); \\");
			FUNC38 ("\t\t\t\tbreak; \\");
			FUNC38 ("\t\t\t\t} \\");
			FUNC38 ("\t\t\terrno=0; \\");
			FUNC38 ("\t\t\tclearerr(yyin); \\");
			FUNC38 ("\t\t\t} \\");
			FUNC38 ("\t\t}\\");
		}
	}

	FUNC40 ();		/* %% [6.0] - break point in skel */

	FUNC24 ("#define YY_RULE_SETUP \\");
	FUNC25 ();
	if (bol_needed) {
		FUNC24 ("if ( yyleng > 0 ) \\");
		FUNC25 ();
		FUNC24 ("YY_CURRENT_BUFFER_LVALUE->yy_at_bol = \\");
		FUNC24 ("\t\t(yytext[yyleng - 1] == '\\n'); \\");
		FUNC22 ();
	}
	FUNC24 ("YY_USER_ACTION");
	FUNC22 ();

	FUNC40 ();		/* %% [7.0] - break point in skel */

	/* Copy prolog to output file. */
	FUNC33 (&action_array[prolog_offset]);

	FUNC26 (stdout, 0);

	FUNC40 ();		/* %% [8.0] - break point in skel */

	FUNC39 (2);

	if (yymore_used && !yytext_is_array) {
		FUNC24 ("YY_G(yy_more_len) = 0;");
		FUNC24 ("if ( YY_G(yy_more_flag) )");
		FUNC25 ();
		FUNC24 ("{");
		FUNC24
			("YY_G(yy_more_len) = YY_G(yy_c_buf_p) - YY_G(yytext_ptr);");
		FUNC24 ("YY_G(yy_more_flag) = 0;");
		FUNC24 ("}");
		FUNC22 ();
	}

	FUNC40 ();		/* %% [9.0] - break point in skel */

	FUNC14 ();

	/* Note, don't use any indentation. */
	FUNC38 ("yy_match:");
	FUNC12 ();

	FUNC40 ();		/* %% [10.0] - break point in skel */
	FUNC39 (2);
	FUNC11 ();

	FUNC40 ();		/* %% [11.0] - break point in skel */
	FUNC38 ("m4_ifdef( [[M4_YY_USE_LINENO]],[[");
	FUNC24
		("if ( yy_act != YY_END_OF_BUFFER && yy_rule_can_match_eol[yy_act] )");
	FUNC25 ();
	FUNC24 ("{");
	FUNC24 ("yy_size_t yyl;");
	FUNC6 ();
	FUNC36 ("for ( yyl = %s; yyl < yyleng; ++yyl )\n",
		 yymore_used ? (yytext_is_array ? "YY_G(yy_prev_more_offset)" :
				"YY_G(yy_more_len)") : "0");
	FUNC25 ();
	FUNC24 ("if ( yytext[yyl] == '\\n' )");
	FUNC25 ();
	FUNC24 ("M4_YY_INCR_LINENO();");
	FUNC22 ();
	FUNC22 ();
	FUNC24 ("}");
	FUNC22 ();
	FUNC38 ("]])");

	FUNC40 ();		/* %% [12.0] - break point in skel */
	if (ddebug) {
		FUNC24 ("if ( yy_flex_debug )");
		FUNC25 ();

		FUNC24 ("{");
		FUNC24 ("if ( yy_act == 0 )");
		FUNC25 ();
		FUNC24 (C_plus_plus ?
			     "std::cerr << \"--scanner backing up\\n\";" :
			     "fprintf( stderr, \"--scanner backing up\\n\" );");
		FUNC22 ();

		FUNC6 ();
		FUNC34 ("else if ( yy_act < %d )\n", num_rules);
		FUNC25 ();

		if (C_plus_plus) {
			FUNC24
				("std::cerr << \"--accepting rule at line \" << yy_rule_linenum[yy_act] <<");
			FUNC24
				("         \"(\\\"\" << yytext << \"\\\")\\n\";");
		}
		else {
			FUNC24
				("fprintf( stderr, \"--accepting rule at line %ld (\\\"%s\\\")\\n\",");

			FUNC24
				("         (long)yy_rule_linenum[yy_act], yytext );");
		}

		FUNC22 ();

		FUNC6 ();
		FUNC34 ("else if ( yy_act == %d )\n", num_rules);
		FUNC25 ();

		if (C_plus_plus) {
			FUNC24
				("std::cerr << \"--accepting default rule (\\\"\" << yytext << \"\\\")\\n\";");
		}
		else {
			FUNC24
				("fprintf( stderr, \"--accepting default rule (\\\"%s\\\")\\n\",");
			FUNC24 ("         yytext );");
		}

		FUNC22 ();

		FUNC6 ();
		FUNC34 ("else if ( yy_act == %d )\n", num_rules + 1);
		FUNC25 ();

		FUNC24 (C_plus_plus ?
			     "std::cerr << \"--(end of buffer or a NUL)\\n\";" :
			     "fprintf( stderr, \"--(end of buffer or a NUL)\\n\" );");

		FUNC22 ();

		FUNC6 ();
		FUNC38 ("else");
		FUNC25 ();

		if (C_plus_plus) {
			FUNC24
				("std::cerr << \"--EOF (start condition \" << YY_START << \")\\n\";");
		}
		else {
			FUNC24
				("fprintf( stderr, \"--EOF (start condition %d)\\n\", YY_START );");
		}

		FUNC22 ();

		FUNC24 ("}");
		FUNC22 ();
	}

	/* Copy actions to output file. */
	FUNC40 ();		/* %% [13.0] - break point in skel */
	FUNC25 ();
	FUNC10 ();
	FUNC33 (&action_array[action_offset]);

	FUNC26 (stdout, 0);

	/* generate cases for any missing EOF rules */
	for (i = 1; i <= lastsc; ++i)
		if (!sceof[i]) {
			FUNC6 ();
			FUNC36 ("case YY_STATE_EOF(%s):\n", scname[i]);
			did_eof_rule = true;
		}

	if (did_eof_rule) {
		FUNC25 ();
		FUNC24 ("yyterminate();");
		FUNC22 ();
	}


	/* Generate code for handling NUL's, if needed. */

	/* First, deal with backing up and setting up yy_cp if the scanner
	 * finds that it should JAM on the NUL.
	 */
	FUNC40 ();		/* %% [14.0] - break point in skel */
	FUNC39 (4);

	if (fullspd || fulltbl)
		FUNC24 ("yy_cp = YY_G(yy_c_buf_p);");

	else {			/* compressed table */
		if (!reject && !interactive) {
			/* Do the guaranteed-needed backing up to figure
			 * out the match.
			 */
			FUNC24
				("yy_cp = YY_G(yy_last_accepting_cpos);");
			FUNC24
				("yy_current_state = YY_G(yy_last_accepting_state);");
		}

		else
			/* Still need to initialize yy_cp, though
			 * yy_current_state was set up by
			 * yy_get_previous_state().
			 */
			FUNC24 ("yy_cp = YY_G(yy_c_buf_p);");
	}


	/* Generate code for yy_get_previous_state(). */
	FUNC39 (1);
	FUNC40 ();		/* %% [15.0] - break point in skel */

	FUNC14 ();

	FUNC39 (2);
	FUNC40 ();		/* %% [16.0] - break point in skel */
	FUNC13 (true);

	FUNC39 (1);
	FUNC40 ();		/* %% [17.0] - break point in skel */
	FUNC9 ();

	FUNC40 ();		/* %% [18.0] - break point in skel */
	FUNC40 ();		/* %% [19.0] - break point in skel */
	/* Update BOL and yylineno inside of input(). */
	if (bol_needed) {
		FUNC24
			("YY_CURRENT_BUFFER_LVALUE->yy_at_bol = (c == '\\n');");
		if (do_yylineno) {
			FUNC24
				("if ( YY_CURRENT_BUFFER_LVALUE->yy_at_bol )");
			FUNC25 ();
			FUNC24 ("M4_YY_INCR_LINENO();");
			FUNC22 ();
		}
	}

	else if (do_yylineno) {
		FUNC24 ("if ( c == '\\n' )");
		FUNC25 ();
		FUNC24 ("M4_YY_INCR_LINENO();");
		FUNC22 ();
	}

	FUNC40 ();

	/* Copy remainder of input to output. */

	FUNC26 (stdout, 1);

	if (sectnum == 3) {
		FUNC0 ();
		(void) FUNC8 ();	/* copy remainder of input to output */
		FUNC1 ();
	}
}