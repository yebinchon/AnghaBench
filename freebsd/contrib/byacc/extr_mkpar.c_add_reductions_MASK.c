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
typedef  int /*<<< orphan*/  action ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int*,int) ; 
 unsigned int* LA ; 
 int* LAruleno ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int* lookaheads ; 
 int ntokens ; 

__attribute__((used)) static action *
FUNC3(int stateno, action *actions)
{
    int i, j, m, n;
    int ruleno, tokensetsize;
    unsigned *rowp;

    tokensetsize = FUNC1(ntokens);
    m = lookaheads[stateno];
    n = lookaheads[stateno + 1];
    for (i = m; i < n; i++)
    {
	ruleno = LAruleno[i];
	rowp = LA + i * tokensetsize;
	for (j = ntokens - 1; j >= 0; j--)
	{
	    if (FUNC0(rowp, j))
		actions = FUNC2(actions, ruleno, j);
	}
    }
    return (actions);
}