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
 int /*<<< orphan*/  parse_param ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(FILE * fp)
{
    FUNC0(fp, '\n');
    FUNC1(fp, "/* compatibility with bison */\n");
    FUNC1(fp, "#ifdef YYPARSE_PARAM\n");
    FUNC1(fp, "/* compatibility with FreeBSD */\n");
    FUNC1(fp, "# ifdef YYPARSE_PARAM_TYPE\n");
    FUNC1(fp,
	      "#  define YYPARSE_DECL() yyparse(YYPARSE_PARAM_TYPE YYPARSE_PARAM)\n");
    FUNC1(fp, "# else\n");
    FUNC1(fp, "#  define YYPARSE_DECL() yyparse(void *YYPARSE_PARAM)\n");
    FUNC1(fp, "# endif\n");
    FUNC1(fp, "#else\n");

    FUNC2(fp, "# define YYPARSE_DECL() yyparse(");
    FUNC3(fp, parse_param, 0);
    FUNC1(fp, ")\n");

    FUNC1(fp, "#endif\n");
}