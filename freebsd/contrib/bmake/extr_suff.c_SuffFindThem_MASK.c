#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* file; TYPE_1__* suff; } ;
struct TYPE_6__ {int /*<<< orphan*/  searchPath; } ;
typedef  TYPE_2__ Src ;
typedef  int /*<<< orphan*/  Lst ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUFF ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  TARG_NOCREATE ; 
 int /*<<< orphan*/ * FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debug_file ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static Src *
FUNC9(Lst srcs, Lst slst)
{
    Src            *s;		/* current Src */
    Src		   *rs;		/* returned Src */
    char	   *ptr;

    rs = NULL;

    while (!FUNC4 (srcs)) {
	s = (Src *)FUNC3(srcs);

	if (FUNC0(SUFF)) {
	    FUNC7(debug_file, "\ttrying %s...", s->file);
	}

	/*
	 * A file is considered to exist if either a node exists in the
	 * graph for it or the file actually exists.
	 */
	if (FUNC6(s->file, TARG_NOCREATE) != NULL) {
#ifdef DEBUG_SRC
	    fprintf(debug_file, "remove %p from %p\n", s, srcs);
#endif
	    rs = s;
	    break;
	}

	if ((ptr = FUNC1(s->file, s->suff->searchPath)) != NULL) {
	    rs = s;
#ifdef DEBUG_SRC
	    fprintf(debug_file, "remove %p from %p\n", s, srcs);
#endif
	    FUNC8(ptr);
	    break;
	}

	if (FUNC0(SUFF)) {
	    FUNC7(debug_file, "not there\n");
	}

	FUNC5(srcs, s);
	FUNC2(slst, s);
    }

    if (FUNC0(SUFF) && rs) {
	FUNC7(debug_file, "got it\n");
    }
    return (rs);
}