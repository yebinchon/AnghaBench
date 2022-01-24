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
struct qe_udc {int /*<<< orphan*/ * eps; } ;
struct TYPE_2__ {scalar_t__ ep0_dir; int /*<<< orphan*/  ep0_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  WAIT_FOR_SETUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* udc_controller ; 

__attribute__((used)) static int FUNC2(struct qe_udc *udc)
{
	FUNC1(&udc->eps[0], 1);
	FUNC0(&udc->eps[0], 1);
	udc_controller->ep0_state = WAIT_FOR_SETUP;
	udc_controller->ep0_dir = 0;
	return 0;
}