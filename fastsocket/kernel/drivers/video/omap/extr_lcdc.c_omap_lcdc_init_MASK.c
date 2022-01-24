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
typedef  scalar_t__ u32 ;
struct omapfb_mem_desc {int dummy; } ;
struct omapfb_device {int /*<<< orphan*/  dev; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {int ext_mode; struct clk* lcd_ck; struct omapfb_device* fbdev; scalar_t__ irq_mask; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  MODULE_NAME ; 
 int /*<<< orphan*/  OMAP_LCDC_CONTROL ; 
 int /*<<< orphan*/  OMAP_LCDC_IRQ ; 
 int FUNC1 (struct clk*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct clk*) ; 
 int /*<<< orphan*/  FUNC4 (struct clk*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (struct clk*) ; 
 int /*<<< orphan*/  FUNC7 (struct clk*) ; 
 int FUNC8 (struct clk*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct omapfb_device*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 TYPE_1__ lcdc ; 
 int /*<<< orphan*/  lcdc_dma_handler ; 
 int /*<<< orphan*/  lcdc_irq_handler ; 
 scalar_t__ FUNC12 () ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct omapfb_device*) ; 
 int FUNC21 (struct omapfb_mem_desc*) ; 

__attribute__((used)) static int FUNC22(struct omapfb_device *fbdev, int ext_mode,
			  struct omapfb_mem_desc *req_vram)
{
	int r;
	u32 l;
	int rate;
	struct clk *tc_ck;

	lcdc.irq_mask = 0;

	lcdc.fbdev = fbdev;
	lcdc.ext_mode = ext_mode;

	l = 0;
	FUNC18(l, OMAP_LCDC_CONTROL);

	/* FIXME:
	 * According to errata some platforms have a clock rate limitiation
	 */
	lcdc.lcd_ck = FUNC5(fbdev->dev, "lcd_ck");
	if (FUNC0(lcdc.lcd_ck)) {
		FUNC9(fbdev->dev, "unable to access LCD clock\n");
		r = FUNC1(lcdc.lcd_ck);
		goto fail0;
	}

	tc_ck = FUNC5(fbdev->dev, "tc_ck");
	if (FUNC0(tc_ck)) {
		FUNC9(fbdev->dev, "unable to access TC clock\n");
		r = FUNC1(tc_ck);
		goto fail1;
	}

	rate = FUNC6(tc_ck);
	FUNC7(tc_ck);

	if (FUNC12())
		rate /= 4;
	if (FUNC13())
		rate /= 3;
	r = FUNC8(lcdc.lcd_ck, rate);
	if (r) {
		FUNC9(fbdev->dev, "failed to adjust LCD rate\n");
		goto fail1;
	}
	FUNC4(lcdc.lcd_ck);

	r = FUNC20(OMAP_LCDC_IRQ, lcdc_irq_handler, 0, MODULE_NAME, fbdev);
	if (r) {
		FUNC9(fbdev->dev, "unable to get IRQ\n");
		goto fail2;
	}

	r = FUNC15(lcdc_dma_handler, NULL);
	if (r) {
		FUNC9(fbdev->dev, "unable to get LCD DMA\n");
		goto fail3;
	}

	FUNC17(ext_mode);
	FUNC16(ext_mode);

	if (!ext_mode)
		if ((r = FUNC2()) < 0)
			goto fail4;

	if ((r = FUNC21(req_vram)) < 0)
		goto fail5;

	FUNC19("omapfb: LCDC initialized\n");

	return 0;
fail5:
	if (!ext_mode)
		FUNC11();
fail4:
	FUNC14();
fail3:
	FUNC10(OMAP_LCDC_IRQ, lcdc.fbdev);
fail2:
	FUNC3(lcdc.lcd_ck);
fail1:
	FUNC7(lcdc.lcd_ck);
fail0:
	return r;
}