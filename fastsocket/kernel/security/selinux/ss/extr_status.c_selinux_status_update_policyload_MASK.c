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
struct selinux_kernel_status {int policyload; int deny_unknown; int /*<<< orphan*/  sequence; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct selinux_kernel_status* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  selinux_status_lock ; 
 scalar_t__ selinux_status_page ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(int seqno)
{
	struct selinux_kernel_status   *status;

	FUNC0(&selinux_status_lock);
	if (selinux_status_page) {
		status = FUNC2(selinux_status_page);

		status->sequence++;
		FUNC4();

		status->policyload = seqno;
		status->deny_unknown = !FUNC3();

		FUNC4();
		status->sequence++;
	}
	FUNC1(&selinux_status_lock);
}