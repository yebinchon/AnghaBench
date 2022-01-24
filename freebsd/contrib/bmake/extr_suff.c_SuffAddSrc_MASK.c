#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {void* l; TYPE_2__* s; } ;
struct TYPE_7__ {int children; void* cp; TYPE_1__* suff; int /*<<< orphan*/ * node; struct TYPE_7__* parent; int /*<<< orphan*/  pref; int /*<<< orphan*/  file; } ;
struct TYPE_6__ {int flags; char* name; int /*<<< orphan*/  refCount; } ;
typedef  TYPE_1__ Suff ;
typedef  TYPE_2__ Src ;
typedef  TYPE_3__ LstSrc ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (void*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PrintAddr ; 
 int SUFF_NULL ; 
 TYPE_2__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debug_file ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(void *sp, void *lsp)
{
    Suff	*s = (Suff *)sp;
    LstSrc      *ls = (LstSrc *)lsp;
    Src         *s2;	    /* new Src structure */
    Src    	*targ; 	    /* Target structure */

    targ = ls->s;

    if ((s->flags & SUFF_NULL) && (*s->name != '\0')) {
	/*
	 * If the suffix has been marked as the NULL suffix, also create a Src
	 * structure for a file with no suffix attached. Two birds, and all
	 * that...
	 */
	s2 = FUNC3(sizeof(Src));
	s2->file =  	FUNC4(targ->pref);
	s2->pref =  	targ->pref;
	s2->parent = 	targ;
	s2->node =  	NULL;
	s2->suff =  	s;
	s->refCount++;
	s2->children =	0;
	targ->children += 1;
	(void)FUNC0(ls->l, s2);
#ifdef DEBUG_SRC
	s2->cp = Lst_Init(FALSE);
	Lst_AtEnd(targ->cp, s2);
	fprintf(debug_file, "1 add %p %p to %p:", targ, s2, ls->l);
	Lst_ForEach(ls->l, PrintAddr, NULL);
	fprintf(debug_file, "\n");
#endif
    }
    s2 = FUNC3(sizeof(Src));
    s2->file = 	    FUNC6(targ->pref, s->name, 0);
    s2->pref =	    targ->pref;
    s2->parent =    targ;
    s2->node = 	    NULL;
    s2->suff = 	    s;
    s->refCount++;
    s2->children =  0;
    targ->children += 1;
    (void)FUNC0(ls->l, s2);
#ifdef DEBUG_SRC
    s2->cp = Lst_Init(FALSE);
    Lst_AtEnd(targ->cp, s2);
    fprintf(debug_file, "2 add %p %p to %p:", targ, s2, ls->l);
    Lst_ForEach(ls->l, PrintAddr, NULL);
    fprintf(debug_file, "\n");
#endif

    return(0);
}