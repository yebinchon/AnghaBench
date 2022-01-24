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
struct pxa25x_udc {scalar_t__ ep0state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  DBG_VERBOSE ; 
 scalar_t__ EP0_STALL ; 
 int UDCCS0 ; 
 int UDCCS0_FST ; 
 int UDCCS0_FTF ; 
 int UDCCS0_SST ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct pxa25x_udc*) ; 

__attribute__((used)) static void FUNC4(unsigned long _dev)
{
	struct pxa25x_udc	*dev = (void *)_dev;

	FUNC1();
	if (dev->ep0state == EP0_STALL
			&& (UDCCS0 & UDCCS0_FST) == 0
			&& (UDCCS0 & UDCCS0_SST) == 0) {
		UDCCS0 = UDCCS0_FST|UDCCS0_FTF;
		FUNC0(DBG_VERBOSE, "ep0 re-stall\n");
		FUNC3(dev);
	}
	FUNC2();
}