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
 scalar_t__ FUNC0 (unsigned int*,int) ; 
 unsigned int* LA ; 
 int* LAruleno ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  graph_file ; 
 size_t larno ; 
 int ntokens ; 
 char** symbol_pname ; 

__attribute__((used)) static void
FUNC3(int ruleno)
{
    int i;
    unsigned tokensetsize;
    unsigned *rowp;

    tokensetsize = (unsigned)FUNC1(ntokens);

    if (ruleno == LAruleno[larno])
    {
	rowp = LA + larno * tokensetsize;

	FUNC2(graph_file, " { ");
	for (i = ntokens - 1; i >= 0; i--)
	{
	    if (FUNC0(rowp, i))
		FUNC2(graph_file, "%s ", symbol_pname[i]);
	}
	FUNC2(graph_file, "}");
	++larno;
    }
}