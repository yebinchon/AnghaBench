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
typedef  int Value_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  graph_file ; 
 int* itemset ; 
 int* itemsetend ; 
 unsigned int larno ; 
 scalar_t__* lookaheads ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ ) ; 
 int* ritem ; 
 size_t* rlhs ; 
 int* rrhs ; 
 char** symbol_pname ; 

__attribute__((used)) static void
FUNC3(int stateno)
{
    Value_t *isp;
    int rule;
    Value_t *sp;
    Value_t *sp1;

    larno = (unsigned)lookaheads[stateno];
    FUNC0(graph_file, "\n\tq%d [label=\"%d:\\l", stateno, stateno);

    for (isp = itemset; isp < itemsetend; isp++)
    {
	sp1 = sp = ritem + *isp;

	while (*sp >= 0)
	    ++sp;
	rule = -(*sp);
	FUNC0(graph_file, "  %s -> ", symbol_pname[rlhs[rule]]);

	for (sp = ritem + rrhs[rule]; sp < sp1; sp++)
	    FUNC0(graph_file, "%s ", symbol_pname[*sp]);

	FUNC2('.', graph_file);

	while (*sp >= 0)
	{
	    FUNC0(graph_file, " %s", symbol_pname[*sp]);
	    sp++;
	}

	if (*sp1 < 0)
	    FUNC1(-*sp1);

	FUNC0(graph_file, "\\l");
    }
    FUNC0(graph_file, "\"];");
}