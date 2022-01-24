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
struct via_rate_lock {int rate; int used; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct via_rate_lock *rec, int rate)
{
	int changed = 0;

	FUNC0(&rec->lock);
	if (rec->rate != rate) {
		if (rec->rate && rec->used > 1) /* already set */
			changed = -EINVAL;
		else {
			rec->rate = rate;
			changed = 1;
		}
	}
	FUNC1(&rec->lock);
	return changed;
}