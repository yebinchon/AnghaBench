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
struct file {int dummy; } ;
struct acm {int /*<<< orphan*/  port; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct acm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct acm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  open_mutex ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct tty_struct*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,struct tty_struct*,struct file*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct tty_struct *tty, struct file *filp)
{
	struct acm *acm = tty->driver_data;

	/* Perform the closing process and see if we need to do the hardware
	   shutdown */
	if (!acm)
		return;
	if (FUNC5(&acm->port, tty, filp) == 0) {
		FUNC2(&open_mutex);
		if (!acm->dev) {
			FUNC6(&acm->port, NULL);
			FUNC1(acm);
			tty->driver_data = NULL;
		}
		FUNC3(&open_mutex);
		return;
	}
	FUNC0(acm, 0);
	FUNC4(&acm->port, tty);
	FUNC6(&acm->port, NULL);
}