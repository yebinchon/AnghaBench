#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ children; scalar_t__ cp; TYPE_1__* parent; struct TYPE_6__* pref; struct TYPE_6__* file; } ;
struct TYPE_5__ {int /*<<< orphan*/  children; scalar_t__ cp; } ;
typedef  TYPE_2__ Src ;
typedef  int /*<<< orphan*/ * LstNode ;
typedef  scalar_t__ Lst ;

/* Variables and functions */
 scalar_t__ FAILURE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PrintAddr ; 
 int TRUE ; 
 int /*<<< orphan*/  debug_file ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC10(Lst l)
{
    LstNode ln;
    Src *s;
    int t = 0;

    if (FUNC6(l) == FAILURE) {
	return 0;
    }
#ifdef DEBUG_SRC
    fprintf(debug_file, "cleaning %lx: ", (unsigned long) l);
    Lst_ForEach(l, PrintAddr, NULL);
    fprintf(debug_file, "\n");
#endif


    while ((ln = FUNC5(l)) != NULL) {
	s = (Src *)FUNC1(ln);
	if (s->children == 0) {
	    FUNC9(s->file);
	    if (!s->parent)
		FUNC9(s->pref);
	    else {
#ifdef DEBUG_SRC
		LstNode ln2 = Lst_Member(s->parent->cp, s);
		if (ln2 != NULL)
		    Lst_Remove(s->parent->cp, ln2);
#endif
		--s->parent->children;
	    }
#ifdef DEBUG_SRC
	    fprintf(debug_file, "free: [l=%p] p=%p %d\n", l, s, s->children);
	    Lst_Destroy(s->cp, NULL);
#endif
	    FUNC7(l, ln);
	    FUNC9(s);
	    t |= 1;
	    FUNC0(l);
	    return TRUE;
	}
#ifdef DEBUG_SRC
	else {
	    fprintf(debug_file, "keep: [l=%p] p=%p %d: ", l, s, s->children);
	    Lst_ForEach(s->cp, PrintAddr, NULL);
	    fprintf(debug_file, "\n");
	}
#endif
    }

    FUNC0(l);

    return t;
}