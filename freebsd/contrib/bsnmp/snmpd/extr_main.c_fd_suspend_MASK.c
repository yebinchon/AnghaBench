#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct fdesc {int id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  evctx ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void
FUNC4(void *p)
{
	struct fdesc *f = p;

#ifdef USE_LIBBEGEMOT
	if (f->id >= 0) {
		poll_unregister(f->id);
		f->id = -1;
	}
#else
	if (FUNC2(f->id)) {
		(void)FUNC0(evctx, f->id);
		FUNC1(&f->id);
	}
#endif
}