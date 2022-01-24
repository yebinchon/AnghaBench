#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int type; char* name; char* uname; int unmade; int /*<<< orphan*/  children; int /*<<< orphan*/  parents; int /*<<< orphan*/  commands; } ;
typedef  int /*<<< orphan*/ * LstNode ;
typedef  int /*<<< orphan*/  Lst ;
typedef  TYPE_1__ GNode ;

/* Variables and functions */
 int /*<<< orphan*/  LST_CONCNEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int OP_OPMASK ; 
 int OP_TRANSFORM ; 
 int OP_USE ; 
 int OP_USEBEFORE ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  TARG_NOCREATE ; 
 TYPE_1__* FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VARF_WANTRES ; 
 char* FUNC10 (int /*<<< orphan*/ *,char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debug_file ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 scalar_t__ FUNC13 (char*,char*) ; 

void
FUNC14(GNode *cgn, GNode *pgn)
{
    LstNode	ln; 	/* An element in the children list */

#ifdef DEBUG_SRC
    if ((cgn->type & (OP_USE|OP_USEBEFORE|OP_TRANSFORM)) == 0) {
	fprintf(debug_file, "Make_HandleUse: called for plain node %s\n", cgn->name);
	return;
    }
#endif

    if ((cgn->type & (OP_USE|OP_USEBEFORE)) || FUNC6(pgn->commands)) {
	    if (cgn->type & OP_USEBEFORE) {
		/*
		 * .USEBEFORE --
		 *	prepend the child's commands to the parent.
		 */
		Lst cmds = pgn->commands;
		pgn->commands = FUNC5(cgn->commands, NULL);
		(void)FUNC2(pgn->commands, cmds, LST_CONCNEW);
		FUNC4(cmds, NULL);
	    } else {
		/*
		 * .USE or target has no commands --
		 *	append the child's commands to the parent.
		 */
		(void)FUNC2(pgn->commands, cgn->commands, LST_CONCNEW);
	    }
    }

    if (FUNC8(cgn->children) == SUCCESS) {
	while ((ln = FUNC7(cgn->children)) != NULL) {
	    GNode *tgn, *gn = (GNode *)FUNC3(ln);

	    /*
	     * Expand variables in the .USE node's name
	     * and save the unexpanded form.
	     * We don't need to do this for commands.
	     * They get expanded properly when we execute.
	     */
	    if (gn->uname == NULL) {
		gn->uname = gn->name;
	    } else {
		FUNC12(gn->name);
	    }
	    gn->name = FUNC10(NULL, gn->uname, pgn, VARF_WANTRES);
	    if (gn->name && gn->uname && FUNC13(gn->name, gn->uname) != 0) {
		/* See if we have a target for this node. */
		tgn = FUNC9(gn->name, TARG_NOCREATE);
		if (tgn != NULL)
		    gn = tgn;
	    }

	    (void)FUNC0(pgn->children, gn);
	    (void)FUNC0(gn->parents, pgn);
	    pgn->unmade += 1;
	}
	FUNC1(cgn->children);
    }

    pgn->type |= cgn->type & ~(OP_OPMASK|OP_USE|OP_USEBEFORE|OP_TRANSFORM);
}