#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct uhci_hcd {TYPE_1__* term_td; scalar_t__ is_stopped; } ;
struct TYPE_4__ {int /*<<< orphan*/  rh_timer; } ;
struct TYPE_3__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  TD_CTRL_IOC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (struct uhci_hcd*) ; 

__attribute__((used)) static void FUNC3(struct uhci_hcd *uhci)
{
	if (uhci->is_stopped)
		FUNC1(&FUNC2(uhci)->rh_timer, jiffies);
	uhci->term_td->status |= FUNC0(TD_CTRL_IOC); 
}