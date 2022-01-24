#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device {int /*<<< orphan*/  parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  ep_qh_dma; int /*<<< orphan*/  ep_qh; int /*<<< orphan*/  ep_qh_size; int /*<<< orphan*/  done; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* udc_controller ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	FUNC0(udc_controller->done);
	FUNC1(dev->parent, udc_controller->ep_qh_size,
			udc_controller->ep_qh, udc_controller->ep_qh_dma);
	FUNC2(udc_controller);
}