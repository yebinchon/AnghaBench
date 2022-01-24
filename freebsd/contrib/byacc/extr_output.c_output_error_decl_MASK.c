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
 scalar_t__ locations ; 
 int /*<<< orphan*/  parse_param ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(FILE * fp)
{
    FUNC0(fp, '\n');
    FUNC1(fp, "/* Parameters sent to yyerror. */\n");
    FUNC1(fp, "#ifndef YYERROR_DECL\n");
    FUNC2(fp, "#define YYERROR_DECL() yyerror(");
#if defined(YYBTYACC)
    if (locations)
	puts_code(fp, "YYLTYPE *loc, ");
#endif
    FUNC4(fp, parse_param, 1);
    FUNC1(fp, "const char *s)\n");
    FUNC1(fp, "#endif\n");

    FUNC1(fp, "#ifndef YYERROR_CALL\n");

    FUNC2(fp, "#define YYERROR_CALL(msg) yyerror(");
#if defined(YYBTYACC)
    if (locations)
	puts_code(fp, "&yylloc, ");
#endif
    FUNC3(fp, parse_param, 1);
    FUNC1(fp, "msg)\n");

    FUNC1(fp, "#endif\n");
}