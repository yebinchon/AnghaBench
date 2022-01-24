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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ locations ; 
 int /*<<< orphan*/  outline ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 char* symbol_prefix ; 

__attribute__((used)) static void
FUNC5(FILE * fp)
{
    if (symbol_prefix == NULL)
    {
	symbol_prefix = "yy";
    }
    else
    {
	FUNC1(fp, "yyparse");
	FUNC1(fp, "yylex");
	FUNC1(fp, "yyerror");
	FUNC1(fp, "yychar");
	FUNC1(fp, "yyval");
	FUNC1(fp, "yylval");
	FUNC1(fp, "yydebug");
	FUNC1(fp, "yynerrs");
	FUNC1(fp, "yyerrflag");
	FUNC1(fp, "yylhs");
	FUNC1(fp, "yylen");
	FUNC1(fp, "yydefred");
#if defined(YYBTYACC)
	define_prefixed(fp, "yystos");
#endif
	FUNC1(fp, "yydgoto");
	FUNC1(fp, "yysindex");
	FUNC1(fp, "yyrindex");
	FUNC1(fp, "yygindex");
	FUNC1(fp, "yytable");
	FUNC1(fp, "yycheck");
	FUNC1(fp, "yyname");
	FUNC1(fp, "yyrule");
#if defined(YYBTYACC)
	if (locations)
	{
	    define_prefixed(fp, "yyloc");
	    define_prefixed(fp, "yylloc");
	}
	putc_code(fp, '\n');
	putl_code(fp, "#if YYBTYACC\n");

	define_prefixed(fp, "yycindex");
	define_prefixed(fp, "yyctable");

	putc_code(fp, '\n');
	putl_code(fp, "#endif /* YYBTYACC */\n");
	putc_code(fp, '\n');
#endif
    }
    if (FUNC0(fp))
	++outline;
    FUNC2(fp, "#define YYPREFIX \"%s\"\n", symbol_prefix);
}