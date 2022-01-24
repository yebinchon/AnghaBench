#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  commands; } ;
struct TYPE_9__ {int type; int flags; char* fname; int lineno; char* name; int /*<<< orphan*/  children; int /*<<< orphan*/  commands; } ;
typedef  TYPE_1__ GNode ;
typedef  int /*<<< orphan*/  Boolean ;

/* Variables and functions */
 TYPE_4__* DEFAULT ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int FROM_DEPEND ; 
 int /*<<< orphan*/  IMPSRC ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_1__*) ; 
 int OP_LIB ; 
 scalar_t__ FUNC4 (int) ; 
 int OP_OPTIONAL ; 
 int OP_SPECIAL ; 
 int /*<<< orphan*/  TARGET ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,char**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ keepgoing ; 
 char* makeDependfile ; 
 char* progname ; 
 int /*<<< orphan*/  stdout ; 
 void FUNC10 (char const*,...) ; 

Boolean
FUNC11(GNode *gn, void (*abortProc)(const char *, ...))
{
    if (FUNC4(gn->type) && FUNC2(gn->commands) &&
	((gn->type & OP_LIB) == 0 || FUNC2(gn->children))) {
	/*
	 * No commands. Look for .DEFAULT rule from which we might infer
	 * commands
	 */
	if ((DEFAULT != NULL) && !FUNC2(DEFAULT->commands) &&
		(gn->type & OP_SPECIAL) == 0) {
	    char *p1;
	    /*
	     * Make only looks for a .DEFAULT if the node was never the
	     * target of an operator, so that's what we do too. If
	     * a .DEFAULT was given, we substitute its commands for gn's
	     * commands and set the IMPSRC variable to be the target's name
	     * The DEFAULT node acts like a transformation rule, in that
	     * gn also inherits any attributes or sources attached to
	     * .DEFAULT itself.
	     */
	    FUNC3(DEFAULT, gn);
	    FUNC5(IMPSRC, FUNC6(TARGET, gn, &p1), gn, 0);
	    FUNC9(p1);
	} else if (FUNC0(gn, 0) == 0 && (gn->type & OP_SPECIAL) == 0) {
	    /*
	     * The node wasn't the target of an operator we have no .DEFAULT
	     * rule to go on and the target doesn't already exist. There's
	     * nothing more we can do for this branch. If the -k flag wasn't
	     * given, we stop in our tracks, otherwise we just don't update
	     * this node's parents so they never get examined.
	     */
	    static const char msg[] = ": don't know how to make";

	    if (gn->flags & FROM_DEPEND) {
		if (!FUNC1(".STALE", gn->fname))
		    FUNC8(stdout, "%s: %s, %d: ignoring stale %s for %s\n",
			progname, gn->fname, gn->lineno, makeDependfile,
			gn->name);
		return TRUE;
	    }

	    if (gn->type & OP_OPTIONAL) {
		(void)FUNC8(stdout, "%s%s %s (ignored)\n", progname,
		    msg, gn->name);
		(void)FUNC7(stdout);
	    } else if (keepgoing) {
		(void)FUNC8(stdout, "%s%s %s (continuing)\n", progname,
		    msg, gn->name);
		(void)FUNC7(stdout);
  		return FALSE;
	    } else {
		(*abortProc)("%s%s %s. Stop", progname, msg, gn->name);
		return FALSE;
	    }
	}
    }
    return TRUE;
}