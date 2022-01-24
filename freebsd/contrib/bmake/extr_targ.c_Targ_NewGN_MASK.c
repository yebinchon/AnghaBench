#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * fname; scalar_t__ lineno; int /*<<< orphan*/ * suffix; void* commands; int /*<<< orphan*/  context; void* order_succ; void* order_pred; void* children; void* parents; void* cohorts; void* iParents; int /*<<< orphan*/ * cmgn; scalar_t__ mtime; scalar_t__ checked; scalar_t__ flags; int /*<<< orphan*/  made; int /*<<< orphan*/ * centurion; scalar_t__* cohort_num; scalar_t__ unmade_cohorts; scalar_t__ unmade; scalar_t__ type; int /*<<< orphan*/ * path; int /*<<< orphan*/ * uname; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ GNode ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ OP_LIB ; 
 int /*<<< orphan*/  UNMADE ; 
 int /*<<< orphan*/ * allGNs ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

GNode *
FUNC5(const char *name)
{
    GNode *gn;

    gn = FUNC3(sizeof(GNode));
    gn->name = FUNC4(name);
    gn->uname = NULL;
    gn->path = NULL;
    if (name[0] == '-' && name[1] == 'l') {
	gn->type = OP_LIB;
    } else {
	gn->type = 0;
    }
    gn->unmade =    	0;
    gn->unmade_cohorts = 0;
    gn->cohort_num[0] = 0;
    gn->centurion =    	NULL;
    gn->made = 	    	UNMADE;
    gn->flags = 	0;
    gn->checked =	0;
    gn->mtime =		0;
    gn->cmgn =		NULL;
    gn->iParents =  	FUNC2(FALSE);
    gn->cohorts =   	FUNC2(FALSE);
    gn->parents =   	FUNC2(FALSE);
    gn->children =  	FUNC2(FALSE);
    gn->order_pred =  	FUNC2(FALSE);
    gn->order_succ =  	FUNC2(FALSE);
    FUNC0(&gn->context, 0);
    gn->commands =  	FUNC2(FALSE);
    gn->suffix =	NULL;
    gn->lineno =	0;
    gn->fname = 	NULL;

#ifdef CLEANUP
    if (allGNs == NULL)
	allGNs = Lst_Init(FALSE);
    Lst_AtEnd(allGNs, gn);
#endif

    return (gn);
}