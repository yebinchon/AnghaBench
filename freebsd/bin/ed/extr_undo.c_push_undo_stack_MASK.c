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
struct TYPE_6__ {int type; void* h; void* t; } ;
typedef  TYPE_1__ undo_t ;

/* Variables and functions */
 int USIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char* errmsg ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 void* FUNC3 (long) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int u_p ; 
 int usize ; 
 TYPE_1__* ustack ; 

undo_t *
FUNC7(int type, long from, long to)
{
	undo_t *t;

#if defined(sun) || defined(NO_REALLOC_NULL)
	if (ustack == NULL &&
	    (ustack = (undo_t *) malloc((usize = USIZE) * sizeof(undo_t))) == NULL) {
		fprintf(stderr, "%s\n", strerror(errno));
		errmsg = "out of memory";
		return NULL;
	}
#endif
	t = ustack;
	if (u_p < usize ||
	    (t = (undo_t *) FUNC5(ustack, (usize += USIZE) * sizeof(undo_t))) != NULL) {
		ustack = t;
		ustack[u_p].type = type;
		ustack[u_p].t = FUNC3(to);
		ustack[u_p].h = FUNC3(from);
		return ustack + u_p++;
	}
	/* out of memory - release undo stack */
	FUNC1(stderr, "%s\n", FUNC6(errno));
	errmsg = "out of memory";
	FUNC0();
	FUNC2(ustack);
	ustack = NULL;
	usize = 0;
	return NULL;
}