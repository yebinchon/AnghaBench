#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int type; scalar_t__ mtime; int flags; int /*<<< orphan*/  parents; TYPE_1__* cmgn; } ;
struct TYPE_9__ {scalar_t__ mtime; char* path; char* name; } ;
typedef  TYPE_2__ GNode ;
typedef  int Boolean ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int CHILDMADE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int FALSE ; 
 int FORCE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  MAKE ; 
 int /*<<< orphan*/  MakeTimeStamp ; 
 int OP_DOUBLEDEP ; 
 int OP_EXEC ; 
 int OP_FORCE ; 
 int OP_JOIN ; 
 int OP_LIB ; 
 int OP_OPTIONAL ; 
 int OP_PHONY ; 
 int OP_USE ; 
 int OP_USEBEFORE ; 
 int TRUE ; 
 char* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  debug_file ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC7 (TYPE_2__*,int) ; 
 scalar_t__ useMeta ; 

Boolean
FUNC8(GNode *gn)
{
    Boolean         oodate;

    /*
     * Certain types of targets needn't even be sought as their datedness
     * doesn't depend on their modification time...
     */
    if ((gn->type & (OP_JOIN|OP_USE|OP_USEBEFORE|OP_EXEC)) == 0) {
	(void)FUNC3(gn, 1);
	if (FUNC2(MAKE)) {
	    if (gn->mtime != 0) {
		FUNC6(debug_file, "modified %s...", FUNC5(gn->mtime));
	    } else {
		FUNC6(debug_file, "non-existent...");
	    }
	}
    }

    /*
     * A target is remade in one of the following circumstances:
     *	its modification time is smaller than that of its youngest child
     *	    and it would actually be run (has commands or type OP_NOP)
     *	it's the object of a force operator
     *	it has no children, was on the lhs of an operator and doesn't exist
     *	    already.
     *
     * Libraries are only considered out-of-date if the archive module says
     * they are.
     *
     * These weird rules are brought to you by Backward-Compatibility and
     * the strange people who wrote 'Make'.
     */
    if (gn->type & (OP_USE|OP_USEBEFORE)) {
	/*
	 * If the node is a USE node it is *never* out of date
	 * no matter *what*.
	 */
	if (FUNC2(MAKE)) {
	    FUNC6(debug_file, ".USE node...");
	}
	oodate = FALSE;
    } else if ((gn->type & OP_LIB) &&
	       ((gn->mtime==0) || FUNC0(gn))) {
	if (FUNC2(MAKE)) {
	    FUNC6(debug_file, "library...");
	}

	/*
	 * always out of date if no children and :: target
	 * or non-existent.
	 */
	oodate = (gn->mtime == 0 || FUNC1(gn) || 
		  (gn->cmgn == NULL && (gn->type & OP_DOUBLEDEP)));
    } else if (gn->type & OP_JOIN) {
	/*
	 * A target with the .JOIN attribute is only considered
	 * out-of-date if any of its children was out-of-date.
	 */
	if (FUNC2(MAKE)) {
	    FUNC6(debug_file, ".JOIN node...");
	}
	if (FUNC2(MAKE)) {
	    FUNC6(debug_file, "source %smade...", gn->flags & CHILDMADE ? "" : "not ");
	}
	oodate = (gn->flags & CHILDMADE) ? TRUE : FALSE;
    } else if (gn->type & (OP_FORCE|OP_EXEC|OP_PHONY)) {
	/*
	 * A node which is the object of the force (!) operator or which has
	 * the .EXEC attribute is always considered out-of-date.
	 */
	if (FUNC2(MAKE)) {
	    if (gn->type & OP_FORCE) {
		FUNC6(debug_file, "! operator...");
	    } else if (gn->type & OP_PHONY) {
		FUNC6(debug_file, ".PHONY node...");
	    } else {
		FUNC6(debug_file, ".EXEC node...");
	    }
	}
	oodate = TRUE;
    } else if ((gn->cmgn != NULL && gn->mtime < gn->cmgn->mtime) ||
	       (gn->cmgn == NULL &&
		((gn->mtime == 0 && !(gn->type & OP_OPTIONAL))
		  || gn->type & OP_DOUBLEDEP)))
    {
	/*
	 * A node whose modification time is less than that of its
	 * youngest child or that has no children (cmgn == NULL) and
	 * either doesn't exist (mtime == 0) and it isn't optional
	 * or was the object of a * :: operator is out-of-date.
	 * Why? Because that's the way Make does it.
	 */
	if (FUNC2(MAKE)) {
	    if (gn->cmgn != NULL && gn->mtime < gn->cmgn->mtime) {
		FUNC6(debug_file, "modified before source %s...",
		    gn->cmgn->path ? gn->cmgn->path : gn->cmgn->name);
	    } else if (gn->mtime == 0) {
		FUNC6(debug_file, "non-existent and no sources...");
	    } else {
		FUNC6(debug_file, ":: operator and no sources...");
	    }
	}
	oodate = TRUE;
    } else {
	/* 
	 * When a non-existing child with no sources
	 * (such as a typically used FORCE source) has been made and
	 * the target of the child (usually a directory) has the same
	 * timestamp as the timestamp just given to the non-existing child
	 * after it was considered made.
	 */
	if (FUNC2(MAKE)) {
	    if (gn->flags & FORCE)
		FUNC6(debug_file, "non existing child...");
	}
	oodate = (gn->flags & FORCE) ? TRUE : FALSE;
    }

#ifdef USE_META
    if (useMeta) {
	oodate = meta_oodate(gn, oodate);
    }
#endif

    /*
     * If the target isn't out-of-date, the parents need to know its
     * modification time. Note that targets that appear to be out-of-date
     * but aren't, because they have no commands and aren't of type OP_NOP,
     * have their mtime stay below their children's mtime to keep parents from
     * thinking they're out-of-date.
     */
    if (!oodate) {
	FUNC4(gn->parents, MakeTimeStamp, gn);
    }

    return (oodate);
}