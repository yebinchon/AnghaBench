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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  action_file ; 
 int /*<<< orphan*/  code_file ; 
 int /*<<< orphan*/  code_file_name ; 
 int /*<<< orphan*/  defines_file ; 
 int /*<<< orphan*/  defines_file_name ; 
 scalar_t__ dflag ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  externs_file ; 
 int /*<<< orphan*/  externs_file_name ; 
 scalar_t__ gflag ; 
 scalar_t__ got_intr ; 
 int /*<<< orphan*/  graph_file ; 
 int /*<<< orphan*/  graph_file_name ; 
 scalar_t__ iflag ; 
 int /*<<< orphan*/  input_file ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ oflag ; 
 int /*<<< orphan*/  output_file ; 
 int /*<<< orphan*/  output_file_name ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ rflag ; 
 int /*<<< orphan*/  text_file ; 
 int /*<<< orphan*/  union_file ; 
 int /*<<< orphan*/  verbose_file ; 
 int /*<<< orphan*/  verbose_file_name ; 
 scalar_t__ vflag ; 

void
FUNC10(int k)
{
    FUNC0(input_file);
    FUNC0(output_file);
    if (iflag)
	FUNC0(externs_file);
    if (rflag)
	FUNC0(code_file);

    FUNC0(action_file);
    FUNC0(defines_file);
    FUNC0(graph_file);
    FUNC0(text_file);
    FUNC0(union_file);
    FUNC0(verbose_file);

    if (got_intr)
	FUNC2(EXIT_FAILURE);

#ifdef NO_LEAKS
    if (rflag)
	DO_FREE(code_file_name);

    if (dflag)
	DO_FREE(defines_file_name);

    if (iflag)
	DO_FREE(externs_file_name);

    if (oflag)
	DO_FREE(output_file_name);

    if (vflag)
	DO_FREE(verbose_file_name);

    if (gflag)
	DO_FREE(graph_file_name);

    lr0_leaks();
    lalr_leaks();
    mkpar_leaks();
    mstring_leaks();
    output_leaks();
    reader_leaks();
#endif

    FUNC3(k);
}