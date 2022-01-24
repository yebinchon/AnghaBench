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
 void* action_file ; 
 scalar_t__ code_file ; 
 int /*<<< orphan*/  code_file_name ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ defines_file ; 
 int /*<<< orphan*/  defines_file_name ; 
 scalar_t__ dflag ; 
 scalar_t__ externs_file ; 
 int /*<<< orphan*/  externs_file_name ; 
 char* file_prefix ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,...) ; 
 scalar_t__ gflag ; 
 scalar_t__ graph_file ; 
 int /*<<< orphan*/  graph_file_name ; 
 scalar_t__ iflag ; 
 scalar_t__ input_file ; 
 int /*<<< orphan*/  input_file_name ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (char*) ; 
 scalar_t__ output_file ; 
 int /*<<< orphan*/  output_file_name ; 
 scalar_t__ rflag ; 
 void* text_file ; 
 void* union_file ; 
 scalar_t__ verbose_file ; 
 int /*<<< orphan*/  verbose_file_name ; 
 scalar_t__ vflag ; 

__attribute__((used)) static void
FUNC5(void)
{
    FUNC0();

    if (input_file == 0)
    {
	input_file = FUNC1(input_file_name, "r");
	if (input_file == 0)
	    FUNC3(input_file_name);
    }

    action_file = FUNC4("action_file");
    text_file = FUNC4("text_file");

    if (vflag)
    {
	verbose_file = FUNC1(verbose_file_name, "w");
	if (verbose_file == 0)
	    FUNC3(verbose_file_name);
    }

    if (gflag)
    {
	graph_file = FUNC1(graph_file_name, "w");
	if (graph_file == 0)
	    FUNC3(graph_file_name);
	FUNC2(graph_file, "digraph %s {\n", file_prefix);
	FUNC2(graph_file, "\tedge [fontsize=10];\n");
	FUNC2(graph_file, "\tnode [shape=box,fontsize=10];\n");
	FUNC2(graph_file, "\torientation=landscape;\n");
	FUNC2(graph_file, "\trankdir=LR;\n");
	FUNC2(graph_file, "\t/*\n");
	FUNC2(graph_file, "\tmargin=0.2;\n");
	FUNC2(graph_file, "\tpage=\"8.27,11.69\"; // for A4 printing\n");
	FUNC2(graph_file, "\tratio=auto;\n");
	FUNC2(graph_file, "\t*/\n");
    }

    if (dflag)
    {
	defines_file = FUNC1(defines_file_name, "w");
	if (defines_file == 0)
	    FUNC3(defines_file_name);
	union_file = FUNC4("union_file");
    }

    if (iflag)
    {
	externs_file = FUNC1(externs_file_name, "w");
	if (externs_file == 0)
	    FUNC3(externs_file_name);
    }

    output_file = FUNC1(output_file_name, "w");
    if (output_file == 0)
	FUNC3(output_file_name);

    if (rflag)
    {
	code_file = FUNC1(code_file_name, "w");
	if (code_file == 0)
	    FUNC3(code_file_name);
    }
    else
	code_file = output_file;
}