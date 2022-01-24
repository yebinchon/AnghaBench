#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ sNum; char* name; struct TYPE_12__* ref; int /*<<< orphan*/  refCount; } ;
typedef  TYPE_1__ Suff ;
typedef  int /*<<< orphan*/ * LstNode ;
typedef  TYPE_1__* Lst ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FAILURE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  SUFF ; 
 int /*<<< orphan*/  debug_file ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void
FUNC8(Lst l, Suff *s)
{
    LstNode 	  ln;		/* current element in l we're examining */
    Suff          *s2 = NULL;	/* the suffix descriptor in this element */

    if (FUNC6(l) == FAILURE) {
	return;
    }
    while ((ln = FUNC5(l)) != NULL) {
	s2 = (Suff *)FUNC3(ln);
	if (s2->sNum >= s->sNum) {
	    break;
	}
    }

    FUNC2(l);
    if (FUNC0(SUFF)) {
	FUNC7(debug_file, "inserting %s(%ld)...", s->name, s->sNum);
    }
    if (ln == NULL) {
	if (FUNC0(SUFF)) {
	    FUNC7(debug_file, "at end of list\n");
	}
	(void)FUNC1(l, s);
	s->refCount++;
	(void)FUNC1(s->ref, l);
    } else if (s2->sNum != s->sNum) {
	if (FUNC0(SUFF)) {
	    FUNC7(debug_file, "before %s(%ld)\n", s2->name, s2->sNum);
	}
	(void)FUNC4(l, ln, s);
	s->refCount++;
	(void)FUNC1(s->ref, l);
    } else if (FUNC0(SUFF)) {
	FUNC7(debug_file, "already there\n");
    }
}