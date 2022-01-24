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
struct slob_page {int units; void* free; } ;
typedef  int slobidx_t ;
typedef  void slob_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long,int) ; 
 int FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct slob_page*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int,void*) ; 
 scalar_t__ FUNC4 (void*) ; 
 void* FUNC5 (void*) ; 
 int FUNC6 (void*) ; 

__attribute__((used)) static void *FUNC7(struct slob_page *sp, size_t size, int align)
{
	slob_t *prev, *cur, *aligned = NULL;
	int delta = 0, units = FUNC1(size);

	for (prev = NULL, cur = sp->free; ; prev = cur, cur = FUNC5(cur)) {
		slobidx_t avail = FUNC6(cur);

		if (align) {
			aligned = (slob_t *)FUNC0((unsigned long)cur, align);
			delta = aligned - cur;
		}
		if (avail >= units + delta) { /* room enough? */
			slob_t *next;

			if (delta) { /* need to fragment head to align? */
				next = FUNC5(cur);
				FUNC3(aligned, avail - delta, next);
				FUNC3(cur, delta, aligned);
				prev = cur;
				cur = aligned;
				avail = FUNC6(cur);
			}

			next = FUNC5(cur);
			if (avail == units) { /* exact fit? unlink. */
				if (prev)
					FUNC3(prev, FUNC6(prev), next);
				else
					sp->free = next;
			} else { /* fragment */
				if (prev)
					FUNC3(prev, FUNC6(prev), cur + units);
				else
					sp->free = cur + units;
				FUNC3(cur + units, avail - units, next);
			}

			sp->units -= units;
			if (!sp->units)
				FUNC2(sp);
			return cur;
		}
		if (FUNC4(cur))
			return NULL;
	}
}