#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int flags; int /*<<< orphan*/  searchPath; } ;
typedef  TYPE_1__ Suff ;
typedef  int /*<<< orphan*/ * LstNode ;
typedef  int /*<<< orphan*/  Lst ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Dir_CopyDir ; 
 int /*<<< orphan*/  Dir_Destroy ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FAILURE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int SUFF_INCLUDE ; 
 int SUFF_LIBRARY ; 
 int /*<<< orphan*/  VAR_GLOBAL ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dirSearchPath ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  sufflist ; 

void
FUNC12(void)
{
    Suff	   	*s;
    LstNode  		ln;
    char		*ptr;
    Lst	    	    	inIncludes; /* Cumulative .INCLUDES path */
    Lst	    	    	inLibs;	    /* Cumulative .LIBS path */

    if (FUNC9(sufflist) == FAILURE) {
	return;
    }

    inIncludes = FUNC6(FALSE);
    inLibs = FUNC6(FALSE);

    while ((ln = FUNC8(sufflist)) != NULL) {
	s = (Suff *)FUNC3(ln);
	if (!FUNC7 (s->searchPath)) {
#ifdef INCLUDES
	    if (s->flags & SUFF_INCLUDE) {
		Dir_Concat(inIncludes, s->searchPath);
	    }
#endif /* INCLUDES */
#ifdef LIBRARIES
	    if (s->flags & SUFF_LIBRARY) {
		Dir_Concat(inLibs, s->searchPath);
	    }
#endif /* LIBRARIES */
	    FUNC0(s->searchPath, dirSearchPath);
	} else {
	    FUNC4(s->searchPath, Dir_Destroy);
	    s->searchPath = FUNC5(dirSearchPath, Dir_CopyDir);
	}
    }

    FUNC10(".INCLUDES", ptr = FUNC1("-I", inIncludes), VAR_GLOBAL, 0);
    FUNC11(ptr);
    FUNC10(".LIBS", ptr = FUNC1("-L", inLibs), VAR_GLOBAL, 0);
    FUNC11(ptr);

    FUNC4(inIncludes, Dir_Destroy);
    FUNC4(inLibs, Dir_Destroy);

    FUNC2(sufflist);
}