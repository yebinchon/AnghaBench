#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_handle_t ;
struct TYPE_2__ {int sm_status; int /*<<< orphan*/  sm_lock; int /*<<< orphan*/  sm_total; int /*<<< orphan*/  sm_done; scalar_t__ sm_verbose; int /*<<< orphan*/  sm_options; int /*<<< orphan*/  sm_proto; int /*<<< orphan*/  sm_flags; int /*<<< orphan*/  sm_op; } ;
typedef  TYPE_1__ share_mount_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(zfs_handle_t *zhp, void *arg)
{
	share_mount_state_t *sms = arg;
	int ret;

	ret = FUNC3(zhp, sms->sm_op, sms->sm_flags, sms->sm_proto,
	    B_FALSE, sms->sm_options);

	FUNC0(&sms->sm_lock);
	if (ret != 0)
		sms->sm_status = ret;
	sms->sm_done++;
	if (sms->sm_verbose)
		FUNC2(sms->sm_done, sms->sm_total);
	FUNC1(&sms->sm_lock);
	return (ret);
}