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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  lock; } ;
struct adapter {TYPE_1__ upr_lock; } ;

/* Variables and functions */
 int STATUS_PENDING ; 
 int STATUS_SUCCESS ; 
 int FUNC0 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct adapter *adapter,
		     u32 upr_request,
		     u32 upr_data,
		     u32 upr_data_h,
		     u32 upr_buffer, u32 upr_buffer_h)
{
	int status;

	FUNC2(&adapter->upr_lock.lock, adapter->upr_lock.flags);
	status = FUNC0(adapter,
					upr_request,
					upr_data,
					upr_data_h, upr_buffer, upr_buffer_h);
	if (status != STATUS_SUCCESS) {
		FUNC3(&adapter->upr_lock.lock,
					adapter->upr_lock.flags);
		return status;
	}
	FUNC1(adapter);
	FUNC3(&adapter->upr_lock.lock,
				adapter->upr_lock.flags);
	return STATUS_PENDING;
}