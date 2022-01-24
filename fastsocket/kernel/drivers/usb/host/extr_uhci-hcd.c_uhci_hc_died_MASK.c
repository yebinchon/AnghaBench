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
struct uhci_hcd {int dead; int /*<<< orphan*/  frame_number; int /*<<< orphan*/  io_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uhci_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uhci_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (struct uhci_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct uhci_hcd *uhci)
{
	FUNC3(uhci);
	FUNC4(FUNC1(FUNC2(uhci)), uhci->io_addr);
	FUNC0(uhci);
	uhci->dead = 1;

	/* The current frame may already be partway finished */
	++uhci->frame_number;
}