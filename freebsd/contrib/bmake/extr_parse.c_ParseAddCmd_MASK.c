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
struct TYPE_3__ {int type; int /*<<< orphan*/  name; int /*<<< orphan*/  lineno; int /*<<< orphan*/  fname; int /*<<< orphan*/  commands; int /*<<< orphan*/  cohorts; } ;
typedef  TYPE_1__ GNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int OP_DOUBLEDEP ; 
 int OP_HAS_COMMANDS ; 
 int OP_SUBMAKE ; 
 int /*<<< orphan*/  PARSE_WARNING ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int
FUNC8(void *gnp, void *cmd)
{
    GNode *gn = (GNode *)gnp;

    /* Add to last (ie current) cohort for :: targets */
    if ((gn->type & OP_DOUBLEDEP) && !FUNC2 (gn->cohorts))
	gn = (GNode *)FUNC1(FUNC3(gn->cohorts));

    /* if target already supplied, ignore commands */
    if (!(gn->type & OP_HAS_COMMANDS)) {
	(void)FUNC0(gn->commands, cmd);
	if (FUNC6(cmd))
	    gn->type |= OP_SUBMAKE;
	FUNC5(gn);
    } else {
#ifdef notyet
	/* XXX: We cannot do this until we fix the tree */
	(void)Lst_AtEnd(gn->commands, cmd);
	Parse_Error(PARSE_WARNING,
		     "overriding commands for target \"%s\"; "
		     "previous commands defined at %s: %d ignored",
		     gn->name, gn->fname, gn->lineno);
#else
	FUNC7(PARSE_WARNING,
		     "duplicate script for target \"%s\" ignored",
		     gn->name);
	FUNC4(gn->fname, gn->lineno, PARSE_WARNING,
			    "using previous script for \"%s\" defined here",
			    gn->name);
#endif
    }
    return(0);
}