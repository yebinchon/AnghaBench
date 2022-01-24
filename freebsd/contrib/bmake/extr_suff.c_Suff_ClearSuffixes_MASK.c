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
struct TYPE_5__ {int refCount; int /*<<< orphan*/  flags; scalar_t__ sNum; void* ref; void* parents; void* children; void* searchPath; scalar_t__ nameLen; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  Suff ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LST_CONCLINK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUFF_NULL ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  dirSearchPath ; 
 TYPE_1__* emptySuff ; 
 scalar_t__ sNum ; 
 int /*<<< orphan*/  suffClean ; 
 TYPE_1__* suffNull ; 
 void* sufflist ; 

void
FUNC6(void)
{
#ifdef CLEANUP
    Lst_Concat(suffClean, sufflist, LST_CONCLINK);
#endif
    sufflist = FUNC2(FALSE);
    sNum = 0;
    if (suffNull)
	FUNC3(suffNull);
    emptySuff = suffNull = FUNC4(sizeof(Suff));

    suffNull->name =   	    FUNC5("");
    suffNull->nameLen =     0;
    suffNull->searchPath =  FUNC2(FALSE);
    FUNC0(suffNull->searchPath, dirSearchPath);
    suffNull->children =    FUNC2(FALSE);
    suffNull->parents =	    FUNC2(FALSE);
    suffNull->ref =	    FUNC2(FALSE);
    suffNull->sNum =   	    sNum++;
    suffNull->flags =  	    SUFF_NULL;
    suffNull->refCount =    1;
}