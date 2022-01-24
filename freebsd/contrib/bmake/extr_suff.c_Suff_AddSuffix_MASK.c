#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int refCount; int /*<<< orphan*/  r; struct TYPE_6__* s; int /*<<< orphan*/ ** gn; scalar_t__ flags; scalar_t__ sNum; void* ref; void* parents; void* children; void* searchPath; int /*<<< orphan*/  name; int /*<<< orphan*/  nameLen; } ;
typedef  TYPE_1__ Suff ;
typedef  int /*<<< orphan*/ * LstNode ;
typedef  TYPE_1__ GNodeSuff ;
typedef  int /*<<< orphan*/  GNode ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SuffRebuildGraph ; 
 int /*<<< orphan*/  SuffScanTargets ; 
 int /*<<< orphan*/  SuffSuffHasNameP ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  sNum ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sufflist ; 
 int /*<<< orphan*/  transforms ; 

void
FUNC8(char *str, GNode **gn)
{
    Suff          *s;	    /* new suffix descriptor */
    LstNode 	  ln;
    GNodeSuff	  gs;

    ln = FUNC1(sufflist, str, SuffSuffHasNameP);
    if (ln == NULL) {
	s = FUNC5(sizeof(Suff));

	s->name =   	FUNC6(str);
	s->nameLen = 	FUNC7(s->name);
	s->searchPath = FUNC3(FALSE);
	s->children = 	FUNC3(FALSE);
	s->parents = 	FUNC3(FALSE);
	s->ref = 	FUNC3(FALSE);
	s->sNum =   	sNum++;
	s->flags =  	0;
	s->refCount =	1;

	(void)FUNC0(sufflist, s);
	/*
	 * We also look at our existing targets list to see if adding
	 * this suffix will make one of our current targets mutate into
	 * a suffix rule. This is ugly, but other makes treat all targets
	 * that start with a . as suffix rules.
	 */
	gs.gn = gn;
	gs.s  = s;
	gs.r  = FALSE;
	FUNC2(FUNC4(), SuffScanTargets, &gs);
	/*
	 * Look for any existing transformations from or to this suffix.
	 * XXX: Only do this after a Suff_ClearSuffixes?
	 */
	FUNC2(transforms, SuffRebuildGraph, s);
    }
}