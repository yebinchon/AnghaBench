#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ class; size_t index; } ;
typedef  TYPE_1__ bucket ;

/* Variables and functions */
 scalar_t__ NONTERM ; 
 scalar_t__ TERM ; 
 int /*<<< orphan*/  TOKEN ; 
 int /*<<< orphan*/  UNDEFINED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 size_t maxrules ; 
 size_t nrules ; 
 TYPE_1__** plhs ; 
 int /*<<< orphan*/ * rassoc ; 
 int /*<<< orphan*/ * rprec ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(bucket *bp, int s_lineno)
{
    if (bp->class == TERM)
	FUNC1(s_lineno);
    bp->class = NONTERM;
    if (!bp->index)
	bp->index = nrules;
    if (nrules >= maxrules)
	FUNC0();
    plhs[nrules] = bp;
    rprec[nrules] = UNDEFINED;
    rassoc[nrules] = TOKEN;
}