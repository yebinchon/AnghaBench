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
struct omapfb_device {int /*<<< orphan*/  dev; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {struct clk* fck; struct omapfb_device* fbdev; int /*<<< orphan*/  fck_hz; int /*<<< orphan*/  lock; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARM_IDLECT2 ; 
 int CONF_SOSSI_RESET_R ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INT_1610_SoSSI_MATCH ; 
 int /*<<< orphan*/  IRQ_TYPE_EDGE_FALLING ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  MOD_CONF_CTRL_1 ; 
 int /*<<< orphan*/  OMAP_SOSSI_BASE ; 
 int FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  SOSSI_ID_REG ; 
 int /*<<< orphan*/  SOSSI_INIT1_REG ; 
 int /*<<< orphan*/  SOSSI_INIT2_REG ; 
 int /*<<< orphan*/  SZ_1K ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*) ; 
 struct clk* FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct clk*) ; 
 int /*<<< orphan*/  FUNC6 (struct clk*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__ sossi ; 
 int /*<<< orphan*/  sossi_dma_callback ; 
 int /*<<< orphan*/  sossi_match_irq ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct omapfb_device *fbdev)
{
	u32 l, k;
	struct clk *fck;
	struct clk *dpll1out_ck;
	int r;

	sossi.base = FUNC9(OMAP_SOSSI_BASE, SZ_1K);
	if (!sossi.base) {
		FUNC7(fbdev->dev, "can't ioremap SoSSI\n");
		return -ENOMEM;
	}

	sossi.fbdev = fbdev;
	FUNC16(&sossi.lock);

	dpll1out_ck = FUNC4(fbdev->dev, "ck_dpll1out");
	if (FUNC0(dpll1out_ck)) {
		FUNC7(fbdev->dev, "can't get DPLL1OUT clock\n");
		return FUNC1(dpll1out_ck);
	}
	/*
	 * We need the parent clock rate, which we might divide further
	 * depending on the timing requirements of the controller. See
	 * _set_timings.
	 */
	sossi.fck_hz = FUNC5(dpll1out_ck);
	FUNC6(dpll1out_ck);

	fck = FUNC4(fbdev->dev, "ck_sossi");
	if (FUNC0(fck)) {
		FUNC7(fbdev->dev, "can't get SoSSI functional clock\n");
		return FUNC1(fck);
	}
	sossi.fck = fck;

	/* Reset and enable the SoSSI module */
	l = FUNC11(MOD_CONF_CTRL_1);
	l |= CONF_SOSSI_RESET_R;
	FUNC12(l, MOD_CONF_CTRL_1);
	l &= ~CONF_SOSSI_RESET_R;
	FUNC12(l, MOD_CONF_CTRL_1);

	FUNC3(sossi.fck);
	l = FUNC11(ARM_IDLECT2);
	l &= ~(1 << 8);			/* DMACK_REQ */
	FUNC12(l, ARM_IDLECT2);

	l = FUNC14(SOSSI_INIT2_REG);
	/* Enable and reset the SoSSI block */
	l |= (1 << 0) | (1 << 1);
	FUNC15(SOSSI_INIT2_REG, l);
	/* Take SoSSI out of reset */
	l &= ~(1 << 1);
	FUNC15(SOSSI_INIT2_REG, l);

	FUNC15(SOSSI_ID_REG, 0);
	l = FUNC14(SOSSI_ID_REG);
	k = FUNC14(SOSSI_ID_REG);

	if (l != 0x55555555 || k != 0xaaaaaaaa) {
		FUNC7(fbdev->dev,
			"invalid SoSSI sync pattern: %08x, %08x\n", l, k);
		r = -ENODEV;
		goto err;
	}

	if ((r = FUNC10(sossi_dma_callback, NULL)) < 0) {
		FUNC7(fbdev->dev, "can't get LCDC IRQ\n");
		r = -ENODEV;
		goto err;
	}

	l = FUNC14(SOSSI_ID_REG); /* Component code */
	l = FUNC14(SOSSI_ID_REG);
	FUNC8(fbdev->dev, "SoSSI version %d.%d initialized\n",
		l >> 16, l & 0xffff);

	l = FUNC14(SOSSI_INIT1_REG);
	l |= (1 << 19); /* DMA_MODE */
	l &= ~(1 << 31); /* REORDERING */
	FUNC15(SOSSI_INIT1_REG, l);

	if ((r = FUNC13(INT_1610_SoSSI_MATCH, sossi_match_irq,
			     IRQ_TYPE_EDGE_FALLING,
	     "sossi_match", sossi.fbdev->dev)) < 0) {
		FUNC7(sossi.fbdev->dev, "can't get SoSSI match IRQ\n");
		goto err;
	}

	FUNC2(sossi.fck);
	return 0;

err:
	FUNC2(sossi.fck);
	FUNC6(sossi.fck);
	return r;
}