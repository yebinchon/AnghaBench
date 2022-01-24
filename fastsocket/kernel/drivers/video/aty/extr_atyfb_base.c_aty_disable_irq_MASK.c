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
typedef  int u32 ;
struct TYPE_3__ {int off_pitch; } ;
struct TYPE_4__ {scalar_t__ pan_display; } ;
struct atyfb_par {int /*<<< orphan*/  irq; int /*<<< orphan*/  int_lock; TYPE_1__ crtc; TYPE_2__ vblank; int /*<<< orphan*/  irq_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRTC_INT_CNTL ; 
 int CRTC_INT_EN_MASK ; 
 int /*<<< orphan*/  CRTC_OFF_PITCH ; 
 int CRTC_VBLANK_INT_EN ; 
 int FUNC0 (int /*<<< orphan*/ ,struct atyfb_par*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,struct atyfb_par*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct atyfb_par*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct atyfb_par *par)
{
	u32 int_cntl;

	if (FUNC5(0, &par->irq_flags)) {
		if (par->vblank.pan_display) {
			par->vblank.pan_display = 0;
			FUNC1(CRTC_OFF_PITCH, par->crtc.off_pitch, par);
		}
		FUNC3(&par->int_lock);
		int_cntl = FUNC0(CRTC_INT_CNTL, par) & CRTC_INT_EN_MASK;
		/* disable interrupt */
		FUNC1(CRTC_INT_CNTL, int_cntl & ~CRTC_VBLANK_INT_EN, par);
		FUNC4(&par->int_lock);
		FUNC2(par->irq, par);
	}

	return 0;
}