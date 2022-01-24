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
struct TYPE_2__ {int /*<<< orphan*/  pids; int /*<<< orphan*/  address; int /*<<< orphan*/  control; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  DBGP_GO ; 
 int DBGP_MAX_PACKET ; 
 int /*<<< orphan*/  DBGP_OUT ; 
 int /*<<< orphan*/  USB_PID_IN ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* ehci_debug ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(unsigned devnum, unsigned endpoint, void *data,
				 int size)
{
	u32 pids, addr, ctrl;
	int ret;

	if (size > DBGP_MAX_PACKET)
		return -1;

	addr = FUNC0(devnum, endpoint);

	pids = FUNC5(&ehci_debug->pids);
	pids = FUNC3(pids, USB_PID_IN);

	ctrl = FUNC5(&ehci_debug->control);
	ctrl = FUNC2(ctrl, size);
	ctrl &= ~DBGP_OUT;
	ctrl |= DBGP_GO;

	FUNC6(addr, &ehci_debug->address);
	FUNC6(pids, &ehci_debug->pids);
	ret = FUNC4(ctrl);
	if (ret < 0)
		return ret;

	if (size > ret)
		size = ret;
	FUNC1(data, size);
	return ret;
}