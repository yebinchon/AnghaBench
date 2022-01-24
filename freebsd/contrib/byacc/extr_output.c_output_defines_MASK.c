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
 int EOF ; 
 int /*<<< orphan*/ * code_file ; 
 int /*<<< orphan*/ * defines_file ; 
 int /*<<< orphan*/  dflag ; 
 int /*<<< orphan*/ * externs_file ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ iflag ; 
 scalar_t__ FUNC3 (char*) ; 
 scalar_t__ locations ; 
 int ntokens ; 
 int /*<<< orphan*/  outline ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ rflag ; 
 int /*<<< orphan*/  sflag ; 
 char** symbol_name ; 
 char* symbol_prefix ; 
 int* symbol_value ; 
 scalar_t__ token_table ; 
 scalar_t__ union_file ; 
 scalar_t__ unionized ; 

__attribute__((used)) static void
FUNC8(FILE * fp)
{
    int c, i;
    char *s;

    for (i = 2; i < ntokens; ++i)
    {
	s = symbol_name[i];
	if (FUNC3(s) && (!sflag || *s != '"'))
	{
	    FUNC0(fp, "#define ");
	    c = *s;
	    if (c == '"')
	    {
		while ((c = *++s) != '"')
		{
		    FUNC5(c, fp);
		}
	    }
	    else
	    {
		do
		{
		    FUNC5(c, fp);
		}
		while ((c = *++s) != 0);
	    }
	    if (fp == code_file)
		++outline;
	    FUNC0(fp, " %d\n", symbol_value[i]);
	}
    }

    if (fp == code_file)
	++outline;
    if (fp != defines_file || iflag)
	FUNC0(fp, "#define YYERRCODE %d\n", symbol_value[1]);

    if (token_table && rflag && fp != externs_file)
    {
	if (fp == code_file)
	    ++outline;
	FUNC1("#undef yytname\n", fp);
	if (fp == code_file)
	    ++outline;
	FUNC1("#define yytname yyname\n", fp);
    }

    if (fp == defines_file || (iflag && !dflag))
    {
	if (unionized)
	{
	    if (union_file != 0)
	    {
		FUNC7(union_file);
		while ((c = FUNC2(union_file)) != EOF)
		    FUNC6(fp, c);
	    }
	    FUNC0(fp, "extern YYSTYPE %slval;\n", symbol_prefix);
	}
#if defined(YYBTYACC)
	if (locations)
	    output_ltype(fp);
#endif
    }
}