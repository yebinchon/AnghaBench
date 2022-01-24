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
struct musb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct musb*) ; 
 int /*<<< orphan*/  FUNC2 (struct musb*) ; 
 int /*<<< orphan*/  FUNC3 (struct musb*,int /*<<< orphan*/ ) ; 

void FUNC4(struct musb *musb)
{
	/* stop IRQs, timers, ... */
	FUNC2(musb);
	FUNC1(musb);
	FUNC0(3, "HDRC disabled\n");

	/* FIXME
	 *  - mark host and/or peripheral drivers unusable/inactive
	 *  - disable DMA (and enable it in HdrcStart)
	 *  - make sure we can musb_start() after musb_stop(); with
	 *    OTG mode, gadget driver module rmmod/modprobe cycles that
	 *  - ...
	 */
	FUNC3(musb, 0);
}