#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* name; int cohort_num; int flags; int type; scalar_t__ made; int unmade; scalar_t__ mtime; int /*<<< orphan*/  cohorts; int /*<<< orphan*/  commands; int /*<<< orphan*/  children; int /*<<< orphan*/  order_succ; int /*<<< orphan*/  order_pred; int /*<<< orphan*/  parents; int /*<<< orphan*/  iParents; } ;
typedef  TYPE_1__ GNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int (*) (void*,void*),int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  OP_DEPENDS 130 
#define  OP_DOUBLEDEP 129 
 int OP_EXEC ; 
#define  OP_FORCE 128 
 int OP_JOIN ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int OP_OPMASK ; 
 int OP_USE ; 
 int OP_USEBEFORE ; 
 int FUNC3 (void*,void*) ; 
 char* FUNC4 (scalar_t__) ; 
 int FUNC5 (void*,void*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ UNMADE ; 
 int /*<<< orphan*/  debug_file ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC8 (scalar_t__) ; 
 TYPE_1__* mainTarg ; 

int
FUNC9(void *gnp, void *passp)
{
    GNode         *gn = (GNode *)gnp;
    int	    	  pass = passp ? *(int *)passp : 0;

    FUNC7(debug_file, "# %s%d, flags %x, type %x, made %ld\n",
	    gn->name, gn->cohort_num, gn->flags, gn->type, gn->made);
    if (gn->flags == 0)
	return 0;

    if (!FUNC2(gn->type)) {
	FUNC7(debug_file, "#\n");
	if (gn == mainTarg) {
	    FUNC7(debug_file, "# *** MAIN TARGET ***\n");
	}
	if (pass >= 2) {
	    if (gn->unmade) {
		FUNC7(debug_file, "# %d unmade children\n", gn->unmade);
	    } else {
		FUNC7(debug_file, "# No unmade children\n");
	    }
	    if (! (gn->type & (OP_JOIN|OP_USE|OP_USEBEFORE|OP_EXEC))) {
		if (gn->mtime != 0) {
		    FUNC7(debug_file, "# last modified %s: %s\n",
			      FUNC4(gn->mtime),
			      FUNC8(gn->made));
		} else if (gn->made != UNMADE) {
		    FUNC7(debug_file, "# non-existent (maybe): %s\n",
			      FUNC8(gn->made));
		} else {
		    FUNC7(debug_file, "# unmade\n");
		}
	    }
	    if (!FUNC1 (gn->iParents)) {
		FUNC7(debug_file, "# implicit parents: ");
		FUNC0(gn->iParents, TargPrintName, NULL);
		FUNC7(debug_file, "\n");
	    }
	} else {
	    if (gn->unmade)
		FUNC7(debug_file, "# %d unmade children\n", gn->unmade);
	}
	if (!FUNC1 (gn->parents)) {
	    FUNC7(debug_file, "# parents: ");
	    FUNC0(gn->parents, TargPrintName, NULL);
	    FUNC7(debug_file, "\n");
	}
	if (!FUNC1 (gn->order_pred)) {
	    FUNC7(debug_file, "# order_pred: ");
	    FUNC0(gn->order_pred, TargPrintName, NULL);
	    FUNC7(debug_file, "\n");
	}
	if (!FUNC1 (gn->order_succ)) {
	    FUNC7(debug_file, "# order_succ: ");
	    FUNC0(gn->order_succ, TargPrintName, NULL);
	    FUNC7(debug_file, "\n");
	}

	FUNC7(debug_file, "%-16s", gn->name);
	switch (gn->type & OP_OPMASK) {
	    case OP_DEPENDS:
		FUNC7(debug_file, ": "); break;
	    case OP_FORCE:
		FUNC7(debug_file, "! "); break;
	    case OP_DOUBLEDEP:
		FUNC7(debug_file, ":: "); break;
	}
	FUNC6(gn->type);
	FUNC0(gn->children, TargPrintName, NULL);
	FUNC7(debug_file, "\n");
	FUNC0(gn->commands, Targ_PrintCmd, NULL);
	FUNC7(debug_file, "\n\n");
	if (gn->type & OP_DOUBLEDEP) {
	    FUNC0(gn->cohorts, Targ_PrintNode, &pass);
	}
    }
    return (0);
}