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
struct fasync_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fasync_struct*,int,int) ; 
 int /*<<< orphan*/  fasync_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct fasync_struct **fp, int sig, int band)
{
	/* First a quick test without locking: usually
	 * the list is empty.
	 */
	if (*fp) {
		FUNC1(&fasync_lock);
		/* reread *fp after obtaining the lock */
		FUNC0(*fp, sig, band);
		FUNC2(&fasync_lock);
	}
}