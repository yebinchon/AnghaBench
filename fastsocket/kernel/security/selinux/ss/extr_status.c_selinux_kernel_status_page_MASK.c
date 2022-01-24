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
struct selinux_kernel_status {int deny_unknown; scalar_t__ policyload; int /*<<< orphan*/  enforcing; scalar_t__ sequence; int /*<<< orphan*/  version; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int GFP_KERNEL ; 
 int /*<<< orphan*/  SELINUX_KERNEL_STATUS_VERSION ; 
 int __GFP_ZERO ; 
 struct page* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct selinux_kernel_status* FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  selinux_enforcing ; 
 int /*<<< orphan*/  selinux_status_lock ; 
 struct page* selinux_status_page ; 

struct page *FUNC5(void)
{
	struct selinux_kernel_status   *status;
	struct page		       *result = NULL;

	FUNC1(&selinux_status_lock);
	if (!selinux_status_page) {
		selinux_status_page = FUNC0(GFP_KERNEL|__GFP_ZERO);

		if (selinux_status_page) {
			status = FUNC3(selinux_status_page);

			status->version = SELINUX_KERNEL_STATUS_VERSION;
			status->sequence = 0;
			status->enforcing = selinux_enforcing;
			/*
			 * NOTE: the next policyload event shall set
			 * a positive value on the status->policyload,
			 * although it may not be 1, but never zero.
			 * So, application can know it was updated.
			 */
			status->policyload = 0;
			status->deny_unknown = !FUNC4();
		}
	}
	result = selinux_status_page;
	FUNC2(&selinux_status_lock);

	return result;
}