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
struct tty_struct {struct acm* driver_data; } ;
struct acm {int /*<<< orphan*/  urb_task; int /*<<< orphan*/  throttle_lock; scalar_t__ throttle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct acm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct tty_struct *tty)
{
	struct acm *acm = tty->driver_data;
	if (!FUNC0(acm))
		return;
	FUNC1(&acm->throttle_lock);
	acm->throttle = 0;
	FUNC2(&acm->throttle_lock);
	FUNC3(&acm->urb_task);
}