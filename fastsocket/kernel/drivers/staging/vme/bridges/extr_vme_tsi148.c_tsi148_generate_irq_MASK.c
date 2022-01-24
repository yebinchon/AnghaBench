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
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ TSI148_LCSR_VICR ; 
 int* TSI148_LCSR_VICR_IRQL ; 
 int TSI148_LCSR_VICR_STID_M ; 
 int /*<<< orphan*/  iack_queue ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* tsi148_bridge ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  vme_int ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(int level, int statid)
{
	u32 tmp;

	FUNC2(&(vme_int));

	/* Read VICR register */
	tmp = FUNC0(tsi148_bridge->base + TSI148_LCSR_VICR);

	/* Set Status/ID */
	tmp = (tmp & ~TSI148_LCSR_VICR_STID_M) |
		(statid & TSI148_LCSR_VICR_STID_M);
	FUNC1(tmp, tsi148_bridge->base + TSI148_LCSR_VICR);

	/* Assert VMEbus IRQ */
	tmp = tmp | TSI148_LCSR_VICR_IRQL[level];
	FUNC1(tmp, tsi148_bridge->base + TSI148_LCSR_VICR);

	/* XXX Consider implementing a timeout? */
	FUNC5(iack_queue, FUNC4());

	FUNC3(&(vme_int));

	return 0;
}