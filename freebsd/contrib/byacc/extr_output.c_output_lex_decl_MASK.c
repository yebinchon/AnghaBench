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
 scalar_t__ lex_param ; 
 scalar_t__ locations ; 
 scalar_t__ pure_parser ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(FILE * fp)
{
    FUNC0(fp, '\n');
    FUNC1(fp, "/* Parameters sent to lex. */\n");
    FUNC1(fp, "#ifdef YYLEX_PARAM\n");
    if (pure_parser)
    {
	FUNC1(fp, "# ifdef YYLEX_PARAM_TYPE\n");
#if defined(YYBTYACC)
	if (locations)
	{
	    putl_code(fp, "#  define YYLEX_DECL() yylex(YYSTYPE *yylval,"
		      " YYLTYPE *yylloc,"
		      " YYLEX_PARAM_TYPE YYLEX_PARAM)\n");
	}
	else
#endif
	{
	    FUNC1(fp, "#  define YYLEX_DECL() yylex(YYSTYPE *yylval,"
		      " YYLEX_PARAM_TYPE YYLEX_PARAM)\n");
	}
	FUNC1(fp, "# else\n");
#if defined(YYBTYACC)
	if (locations)
	{
	    putl_code(fp, "#  define YYLEX_DECL() yylex(YYSTYPE *yylval,"
		      " YYLTYPE *yylloc,"
		      " void * YYLEX_PARAM)\n");
	}
	else
#endif
	{
	    FUNC1(fp, "#  define YYLEX_DECL() yylex(YYSTYPE *yylval,"
		      " void * YYLEX_PARAM)\n");
	}
	FUNC1(fp, "# endif\n");
#if defined(YYBTYACC)
	if (locations)
	    putl_code(fp,
		      "# define YYLEX yylex(&yylval, &yylloc, YYLEX_PARAM)\n");
	else
#endif
	    FUNC1(fp, "# define YYLEX yylex(&yylval, YYLEX_PARAM)\n");
    }
    else
    {
	FUNC1(fp, "# define YYLEX_DECL() yylex(void *YYLEX_PARAM)\n");
	FUNC1(fp, "# define YYLEX yylex(YYLEX_PARAM)\n");
    }
    FUNC1(fp, "#else\n");
    if (pure_parser && lex_param)
    {
#if defined(YYBTYACC)
	if (locations)
	    puts_code(fp,
		      "# define YYLEX_DECL() yylex(YYSTYPE *yylval, YYLTYPE *yylloc, ");
	else
#endif
	    FUNC2(fp, "# define YYLEX_DECL() yylex(YYSTYPE *yylval, ");
	FUNC4(fp, lex_param, 0);
	FUNC1(fp, ")\n");

#if defined(YYBTYACC)
	if (locations)
	    puts_code(fp, "# define YYLEX yylex(&yylval, &yylloc, ");
	else
#endif
	    FUNC2(fp, "# define YYLEX yylex(&yylval, ");
	FUNC3(fp, lex_param, 0);
	FUNC1(fp, ")\n");
    }
    else if (pure_parser)
    {
#if defined(YYBTYACC)
	if (locations)
	{
	    putl_code(fp,
		      "# define YYLEX_DECL() yylex(YYSTYPE *yylval, YYLTYPE *yylloc)\n");
	    putl_code(fp, "# define YYLEX yylex(&yylval, &yylloc)\n");
	}
	else
#endif
	{
	    FUNC1(fp, "# define YYLEX_DECL() yylex(YYSTYPE *yylval)\n");
	    FUNC1(fp, "# define YYLEX yylex(&yylval)\n");
	}
    }
    else if (lex_param)
    {
	FUNC2(fp, "# define YYLEX_DECL() yylex(");
	FUNC4(fp, lex_param, 0);
	FUNC1(fp, ")\n");

	FUNC2(fp, "# define YYLEX yylex(");
	FUNC3(fp, lex_param, 0);
	FUNC1(fp, ")\n");
    }
    else
    {
	FUNC1(fp, "# define YYLEX_DECL() yylex(void)\n");
	FUNC1(fp, "# define YYLEX yylex()\n");
    }
    FUNC1(fp, "#endif\n");
}