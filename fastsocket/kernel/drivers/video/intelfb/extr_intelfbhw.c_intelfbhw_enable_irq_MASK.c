#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct intelfb_info {int /*<<< orphan*/  int_lock; TYPE_3__* info; int /*<<< orphan*/  irq_flags; TYPE_1__* pdev; } ;
struct TYPE_5__ {int vmode; } ;
struct TYPE_6__ {TYPE_2__ var; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EINVAL ; 
 int FB_VMODE_INTERLACED ; 
 int /*<<< orphan*/  HWSTAM ; 
 int /*<<< orphan*/  IER ; 
 int /*<<< orphan*/  IMR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int PIPE_A_EVENT_INTERRUPT ; 
 int VSYNC_PIPE_A_INTERRUPT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  intelfbhw_irq ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct intelfb_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC8(struct intelfb_info *dinfo)
{
	u16 tmp;
	if (!FUNC7(0, &dinfo->irq_flags)) {
		if (FUNC4(dinfo->pdev->irq, intelfbhw_irq, IRQF_SHARED,
				"intelfb", dinfo)) {
			FUNC3(0, &dinfo->irq_flags);
			return -EINVAL;
		}

		FUNC5(&dinfo->int_lock);
		FUNC2(HWSTAM, 0xfffe); /* i830 DRM uses ffff */
		FUNC2(IMR, 0);
	} else
		FUNC5(&dinfo->int_lock);

	if (dinfo->info->var.vmode & FB_VMODE_INTERLACED)
		tmp = PIPE_A_EVENT_INTERRUPT;
	else
		tmp = VSYNC_PIPE_A_INTERRUPT; /* non-interlaced */
	if (tmp != FUNC1(IER)) {
		FUNC0("changing IER to 0x%X\n", tmp);
		FUNC2(IER, tmp);
	}

	FUNC6(&dinfo->int_lock);
	return 0;
}