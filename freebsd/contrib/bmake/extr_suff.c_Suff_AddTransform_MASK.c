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
struct TYPE_10__ {int /*<<< orphan*/  type; void* children; void* commands; } ;
struct TYPE_9__ {char* name; int /*<<< orphan*/  parents; int /*<<< orphan*/  children; } ;
typedef  TYPE_1__ Suff ;
typedef  int /*<<< orphan*/ * LstNode ;
typedef  TYPE_2__ GNode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_TRANSFORM ; 
 int /*<<< orphan*/  SUFF ; 
 int /*<<< orphan*/  SuffGNHasNameP ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,TYPE_1__**,TYPE_1__**) ; 
 TYPE_2__* FUNC8 (char*) ; 
 int /*<<< orphan*/  debug_file ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  transforms ; 

GNode *
FUNC10(char *line)
{
    GNode         *gn;		/* GNode of transformation rule */
    Suff          *s,		/* source suffix */
                  *t;		/* target suffix */
    LstNode 	  ln;	    	/* Node for existing transformation */

    ln = FUNC4(transforms, line, SuffGNHasNameP);
    if (ln == NULL) {
	/*
	 * Make a new graph node for the transformation. It will be filled in
	 * by the Parse module.
	 */
	gn = FUNC8(line);
	(void)FUNC1(transforms, gn);
    } else {
	/*
	 * New specification for transformation rule. Just nuke the old list
	 * of commands so they can be filled in again... We don't actually
	 * free the commands themselves, because a given command can be
	 * attached to several different transformations.
	 */
	gn = (GNode *)FUNC2(ln);
	FUNC3(gn->commands, NULL);
	FUNC3(gn->children, NULL);
	gn->commands = FUNC5(FALSE);
	gn->children = FUNC5(FALSE);
    }

    gn->type = OP_TRANSFORM;

    (void)FUNC7(line, &s, &t);

    /*
     * link the two together in the proper relationship and order
     */
    if (FUNC0(SUFF)) {
	FUNC9(debug_file, "defining transformation from `%s' to `%s'\n",
		s->name, t->name);
    }
    FUNC6(t->children, s);
    FUNC6(s->parents, t);

    return (gn);
}