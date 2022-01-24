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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ C_plus_plus ; 
 int /*<<< orphan*/  NUL_ec ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  backing_name ; 
 int /*<<< orphan*/ * backing_up_file ; 
 scalar_t__ backing_up_report ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int csize ; 
 scalar_t__ ddebug ; 
 scalar_t__ do_stdinit ; 
 scalar_t__ do_yylineno ; 
 int /*<<< orphan*/  do_yywrap ; 
 int /*<<< orphan*/ * ecgroup ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ fullspd ; 
 scalar_t__ fulltbl ; 
 scalar_t__ FUNC10 (char*) ; 
 scalar_t__ interactive ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ lex_compat ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  nextecm ; 
 int numecs ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int performance_report ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int posix_compat ; 
 int real_reject ; 
 scalar_t__ reentrant ; 
 int reject ; 
 int reject_really_used ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ syntaxerror ; 
 scalar_t__ useecs ; 
 scalar_t__ variable_trailing_context_rules ; 
 scalar_t__ yyclass ; 
 int yymore_really_used ; 
 int yymore_used ; 
 scalar_t__ FUNC17 () ; 
 scalar_t__ yytext_is_array ; 

void FUNC18 ()
{
	static char yy_stdinit[] = "FILE *yyin = stdin, *yyout = stdout;";
	static char yy_nostdinit[] =
		"FILE *yyin = (FILE *) 0, *yyout = (FILE *) 0;";

	FUNC12 ((FILE *) 0, 1);

	if (FUNC17 ()) {
		FUNC16 (FUNC3("fatal parse error"));
		FUNC6 (1);
	}

	if (syntaxerror)
		FUNC6 (1);

	/* If the user explicitly requested posix compatibility by specifing the
	 * posix-compat option, then we check for conflicting options. However, if
	 * the POSIXLY_CORRECT variable is set, then we quietly make flex as
	 * posix-compatible as possible.  This is the recommended behavior
	 * according to the GNU Coding Standards.
	 *
	 * Note: The posix option was added to flex to provide the posix behavior
	 * of the repeat operator in regular expressions, e.g., `ab{3}'
	 */
	if (posix_compat) {
		/* TODO: This is where we try to make flex behave according to
		 * posiz, AND check for conflicting options. How far should we go
		 * with this? Should we disable all the neat-o flex features?
		 */
		/* Update: Estes says no, since other flex features don't violate posix. */
	}

	if (FUNC10 ("POSIXLY_CORRECT")) {
		posix_compat = true;
	}

	if (backing_up_report) {
		backing_up_file = FUNC8 (backing_name, "w");
		if (backing_up_file == NULL)
			FUNC11 (FUNC3
				("could not create backing-up info file %s"),
				backing_name);
	}

	else
		backing_up_file = NULL;

	if (yymore_really_used == true)
		yymore_used = true;
	else if (yymore_really_used == false)
		yymore_used = false;

	if (reject_really_used == true)
		reject = true;
	else if (reject_really_used == false)
		reject = false;

	if (performance_report > 0) {
		if (lex_compat) {
			FUNC9 (stderr,
				 FUNC3
				 ("-l AT&T lex compatibility option entails a large performance penalty\n"));
			FUNC9 (stderr,
				 FUNC3
				 (" and may be the actual source of other reported performance penalties\n"));
		}

		else if (do_yylineno) {
			FUNC9 (stderr,
				 FUNC3
				 ("%%option yylineno entails a performance penalty ONLY on rules that can match newline characters\n"));
		}

		if (performance_report > 1) {
			if (interactive)
				FUNC9 (stderr,
					 FUNC3
					 ("-I (interactive) entails a minor performance penalty\n"));

			if (yymore_used)
				FUNC9 (stderr,
					 FUNC3
					 ("yymore() entails a minor performance penalty\n"));
		}

		if (reject)
			FUNC9 (stderr,
				 FUNC3
				 ("REJECT entails a large performance penalty\n"));

		if (variable_trailing_context_rules)
			FUNC9 (stderr,
				 FUNC3
				 ("Variable trailing context rules entail a large performance penalty\n"));
	}

	if (reject)
		real_reject = true;

	if (variable_trailing_context_rules)
		reject = true;

	if ((fulltbl || fullspd) && reject) {
		if (real_reject)
			FUNC7 (FUNC3
				   ("REJECT cannot be used with -f or -F"));
		else if (do_yylineno)
			FUNC7 (FUNC3
				   ("%option yylineno cannot be used with REJECT"));
		else
			FUNC7 (FUNC3
				   ("variable trailing context rules cannot be used with -f or -F"));
	}

	if (reject){
        FUNC13( "M4_YY_USES_REJECT", NULL);
		//outn ("\n#define YY_USES_REJECT");
    }

	if (!do_yywrap) {
		if (!C_plus_plus) {
			 if (reentrant)
				FUNC15 ("\n#define yywrap(yyscanner) 1");
			 else
				FUNC15 ("\n#define yywrap() 1");
		}
		FUNC15 ("#define YY_SKIP_YYWRAP");
	}

	if (ddebug)
		FUNC15 ("\n#define FLEX_DEBUG");

	FUNC1 ();
	if (csize == 256)
		FUNC15 ("typedef unsigned char YY_CHAR;");
	else
		FUNC15 ("typedef char YY_CHAR;");
	FUNC2 ();

	if (C_plus_plus) {
		FUNC15 ("#define yytext_ptr yytext");

		if (interactive)
			FUNC15 ("#define YY_INTERACTIVE");
	}

	else {
		FUNC1 ();
		/* In reentrant scanner, stdinit is handled in flex.skl. */
		if (do_stdinit) {
			if (reentrant){
                FUNC15 ("#ifdef VMS");
                FUNC15 ("#ifdef __VMS_POSIX");
                FUNC15 ("#define YY_STDINIT");
                FUNC15 ("#endif");
                FUNC15 ("#else");
                FUNC15 ("#define YY_STDINIT");
                FUNC15 ("#endif");
            }

			FUNC15 ("#ifdef VMS");
			FUNC15 ("#ifndef __VMS_POSIX");
			FUNC15 (yy_nostdinit);
			FUNC15 ("#else");
			FUNC15 (yy_stdinit);
			FUNC15 ("#endif");
			FUNC15 ("#else");
			FUNC15 (yy_stdinit);
			FUNC15 ("#endif");
		}

		else {
			if(!reentrant)
                FUNC15 (yy_nostdinit);
		}
		FUNC2 ();
	}

	FUNC1 ();
	if (fullspd)
		FUNC15 ("typedef yyconst struct yy_trans_info *yy_state_type;");
	else if (!C_plus_plus)
		FUNC15 ("typedef int yy_state_type;");
	FUNC2 ();

	if (lex_compat)
		FUNC15 ("#define YY_FLEX_LEX_COMPAT");

	if (!C_plus_plus && !reentrant) {
		FUNC15 ("extern int yylineno;");
		FUNC1 ();
		FUNC15 ("int yylineno = 1;");
		FUNC2 ();
	}

	if (C_plus_plus) {
		FUNC15 ("\n#include <FlexLexer.h>");

 		if (!do_yywrap) {
			FUNC15("\nint yyFlexLexer::yywrap() { return 1; }");
		}

		if (yyclass) {
			FUNC15 ("int yyFlexLexer::yylex()");
			FUNC15 ("\t{");
			FUNC15 ("\tLexerError( \"yyFlexLexer::yylex invoked but %option yyclass used\" );");
			FUNC15 ("\treturn 0;");
			FUNC15 ("\t}");

			FUNC14 ("\n#define YY_DECL int %s::yylex()\n",
				 yyclass);
		}
	}

	else {

		/* Watch out: yytext_ptr is a variable when yytext is an array,
		 * but it's a macro when yytext is a pointer.
		 */
		if (yytext_is_array) {
			if (!reentrant)
				FUNC15 ("extern char yytext[];\n");
		}
		else {
			if (reentrant) {
				FUNC15 ("#define yytext_ptr yytext_r");
			}
			else {
				FUNC15 ("extern char *yytext;");
				FUNC15 ("#define yytext_ptr yytext");
			}
		}

		if (yyclass)
			FUNC7 (FUNC3
				   ("%option yyclass only meaningful for C++ scanners"));
	}

	if (useecs)
		numecs = FUNC5 (nextecm, ecgroup, csize);
	else
		numecs = csize;

	/* Now map the equivalence class for NUL to its expected place. */
	ecgroup[0] = ecgroup[csize];
	NUL_ec = FUNC0 (ecgroup[0]);

	if (useecs)
		FUNC4 ();
}