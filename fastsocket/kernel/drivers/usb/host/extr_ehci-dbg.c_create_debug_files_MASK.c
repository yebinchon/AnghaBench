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
struct usb_bus {int /*<<< orphan*/  bus_name; } ;
struct ehci_hcd {int /*<<< orphan*/ * debug_dir; int /*<<< orphan*/ * debug_async; int /*<<< orphan*/ * debug_periodic; void* debug_registers; } ;
struct TYPE_2__ {struct usb_bus self; } ;

/* Variables and functions */
 int S_IRUGO ; 
 int S_IWUGO ; 
 int /*<<< orphan*/  debug_async_fops ; 
 int /*<<< orphan*/  debug_lpm_fops ; 
 int /*<<< orphan*/  debug_periodic_fops ; 
 int /*<<< orphan*/  debug_registers_fops ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (char*,int,int /*<<< orphan*/ *,struct usb_bus*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ehci_debug_root ; 
 TYPE_1__* FUNC3 (struct ehci_hcd*) ; 

__attribute__((used)) static inline void FUNC4 (struct ehci_hcd *ehci)
{
	struct usb_bus *bus = &FUNC3(ehci)->self;

	ehci->debug_dir = FUNC0(bus->bus_name, ehci_debug_root);
	if (!ehci->debug_dir)
		goto dir_error;

	ehci->debug_async = FUNC1("async", S_IRUGO,
						ehci->debug_dir, bus,
						&debug_async_fops);
	if (!ehci->debug_async)
		goto async_error;

	ehci->debug_periodic = FUNC1("periodic", S_IRUGO,
						   ehci->debug_dir, bus,
						   &debug_periodic_fops);
	if (!ehci->debug_periodic)
		goto periodic_error;

	ehci->debug_registers = FUNC1("registers", S_IRUGO,
						    ehci->debug_dir, bus,
						    &debug_registers_fops);

	ehci->debug_registers = FUNC1("lpm", S_IRUGO|S_IWUGO,
						    ehci->debug_dir, bus,
						    &debug_lpm_fops);
	if (!ehci->debug_registers)
		goto registers_error;
	return;

registers_error:
	FUNC2(ehci->debug_periodic);
periodic_error:
	FUNC2(ehci->debug_async);
async_error:
	FUNC2(ehci->debug_dir);
dir_error:
	ehci->debug_periodic = NULL;
	ehci->debug_async = NULL;
	ehci->debug_dir = NULL;
}