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
struct musb {int /*<<< orphan*/  mregs; TYPE_1__* config; } ;
struct TYPE_2__ {int /*<<< orphan*/  gpio_vrsel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MUSB_DEVCTL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct musb*) ; 

__attribute__((used)) static void FUNC4(struct musb *musb, int is_on)
{
	if (is_on)
		FUNC1(musb->config->gpio_vrsel, 1);
	else
		FUNC1(musb->config->gpio_vrsel, 0);

	FUNC0(1, "VBUS %s, devctl %02x "
		/* otg %3x conf %08x prcm %08x */ "\n",
		FUNC3(musb),
		FUNC2(musb->mregs, MUSB_DEVCTL));
}