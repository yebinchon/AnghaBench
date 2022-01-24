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
 int /*<<< orphan*/  DBGP_GO ; 
 int /*<<< orphan*/  DBGP_OUT ; 
 int /*<<< orphan*/  USB_PID_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* ehci_debug ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(u32 addr, const char *bytes, int size)
{
	u32 pids, ctrl;

	pids = FUNC4(&ehci_debug->pids);
	pids = FUNC1(pids, USB_PID_OUT);

	ctrl = FUNC4(&ehci_debug->control);
	ctrl = FUNC0(ctrl, size);
	ctrl |= DBGP_OUT;
	ctrl |= DBGP_GO;

	FUNC2(bytes, size);
	FUNC5(addr, &ehci_debug->address);
	FUNC5(pids, &ehci_debug->pids);
	return FUNC3(ctrl);
}