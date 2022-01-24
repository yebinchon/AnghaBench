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
 int /*<<< orphan*/  body_1 ; 
 int /*<<< orphan*/  body_2 ; 
 int /*<<< orphan*/  body_3 ; 
 int /*<<< orphan*/  body_vars ; 
 int /*<<< orphan*/ * code_file ; 
 int /*<<< orphan*/ * defines_file ; 
 char* defines_file_name ; 
 scalar_t__ destructor ; 
 scalar_t__ dflag ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * externs_file ; 
 char* externs_file_name ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  global_vars ; 
 int /*<<< orphan*/  hdr_defs ; 
 int /*<<< orphan*/  hdr_vars ; 
 scalar_t__ iflag ; 
 int /*<<< orphan*/  impure_vars ; 
 int /*<<< orphan*/  init_vars ; 
 scalar_t__ initial_action ; 
 scalar_t__ locations ; 
 int /*<<< orphan*/  outline ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * output_file ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 () ; 
 scalar_t__ pure_parser ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,char) ; 
 scalar_t__ rflag ; 
 int /*<<< orphan*/  FUNC30 () ; 
 int /*<<< orphan*/  tables ; 
 int /*<<< orphan*/  trailer ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xdecls ; 

void
FUNC33(void)
{
    FILE *fp;

    FUNC2();
    FUNC5();
    FUNC4();

#if defined(YYBTYACC)
    output_backtracking_parser(output_file);
    if (rflag)
	output_backtracking_parser(code_file);
#endif

    if (iflag)
    {
	FUNC31(code_file);
	++outline;
	FUNC1(code_file, "#include \"%s\"\n", externs_file_name);
	fp = externs_file;
    }
    else
	fp = code_file;

    FUNC19(fp);
    FUNC20(fp);
#if defined(YY_NO_LEAKS)
    output_no_leaks(fp);
#endif
    FUNC23(fp);
    FUNC24(fp);
#if defined(YYBTYACC)
    if (locations)
	output_ltype(fp);
#endif
    FUNC18(fp);
    FUNC15(fp);
    FUNC12(fp);
#if defined(YYBTYACC)
    if (destructor)
	output_yydestruct_decl(fp);
#endif
    if (iflag || !rflag)
    {
	FUNC32(fp, xdecls);
    }

    if (iflag)
    {
	FUNC13(externs_file, global_vars);
	if (!pure_parser)
	    FUNC13(externs_file, impure_vars);
    }

    if (iflag)
    {
	if (dflag)
	{
	    ++outline;
	    FUNC1(code_file, "#include \"%s\"\n", defines_file_name);
	}
	else
	    FUNC11(externs_file);
    }
    else
    {
	FUNC29(code_file, '\n');
	FUNC11(code_file);
    }

    if (dflag)
    {
	FUNC30();
	FUNC11(defines_file);
	FUNC0();
    }

    FUNC21();
    FUNC26();
#if defined(YYBTYACC)
    output_accessing_symbols();
#endif
    FUNC8();
    FUNC3();
    FUNC10();
    if (rflag)
    {
	FUNC32(code_file, xdecls);
	FUNC6(code_file);
	FUNC32(code_file, tables);
    }
    FUNC32(code_file, global_vars);
    if (!pure_parser)
    {
	FUNC32(code_file, impure_vars);
    }
    FUNC32(code_file, hdr_defs);
    if (!pure_parser)
    {
	FUNC32(code_file, hdr_vars);
    }
    FUNC25();
#if defined(YYBTYACC)
    if (destructor)
	output_yydestruct_impl();
#endif
    FUNC32(code_file, body_1);
    if (pure_parser)
    {
	FUNC32(code_file, body_vars);
    }
    FUNC32(code_file, body_2);
    if (pure_parser)
    {
	FUNC32(code_file, init_vars);
    }
#if defined(YYBTYACC)
    if (initial_action)
	output_initial_action();
#endif
    FUNC32(code_file, body_3);
    FUNC22();
    FUNC32(code_file, trailer);
}