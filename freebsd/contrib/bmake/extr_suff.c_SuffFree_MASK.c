#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* name; int /*<<< orphan*/  searchPath; int /*<<< orphan*/  parents; int /*<<< orphan*/  children; int /*<<< orphan*/  ref; scalar_t__ refCount; } ;
typedef  TYPE_1__ Suff ;

/* Variables and functions */
 int /*<<< orphan*/ * Dir_Destroy ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*,scalar_t__) ; 
 TYPE_1__* emptySuff ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* suffNull ; 

__attribute__((used)) static void
FUNC3(void *sp)
{
    Suff           *s = (Suff *)sp;

    if (s == suffNull)
	suffNull = NULL;

    if (s == emptySuff)
	emptySuff = NULL;

#ifdef notdef
    /* We don't delete suffixes in order, so we cannot use this */
    if (s->refCount)
	Punt("Internal error deleting suffix `%s' with refcount = %d", s->name,
	    s->refCount);
#endif

    FUNC0(s->ref, NULL);
    FUNC0(s->children, NULL);
    FUNC0(s->parents, NULL);
    FUNC0(s->searchPath, Dir_Destroy);

    FUNC2(s->name);
    FUNC2(s);
}