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
struct TYPE_2__ {int l4_khz; int /*<<< orphan*/  dss_ick; int /*<<< orphan*/  base; struct omapfb_device* fbdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISPC_IRQ_FRAMEMASK ; 
 int ENOMEM ; 
 int /*<<< orphan*/  RFBI_BASE ; 
 int /*<<< orphan*/  RFBI_CONFIG0 ; 
 int /*<<< orphan*/  RFBI_CONTROL ; 
 int /*<<< orphan*/  RFBI_DATA_CYCLE1_0 ; 
 int /*<<< orphan*/  RFBI_REVISION ; 
 int /*<<< orphan*/  RFBI_SYSCONFIG ; 
 int /*<<< orphan*/  RFBI_SYSSTATUS ; 
 int /*<<< orphan*/  SZ_1K ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 TYPE_1__ rfbi ; 
 int /*<<< orphan*/  rfbi_dma_callback ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct omapfb_device *fbdev)
{
	u32 l;
	int r;

	rfbi.fbdev = fbdev;
	rfbi.base = FUNC2(RFBI_BASE, SZ_1K);
	if (!rfbi.base) {
		FUNC1(fbdev->dev, "can't ioremap RFBI\n");
		return -ENOMEM;
	}

	if ((r = FUNC6()) < 0)
		return r;
	FUNC5(1);

	rfbi.l4_khz = FUNC0(rfbi.dss_ick) / 1000;

	/* Reset */
	FUNC8(RFBI_SYSCONFIG, 1 << 1);
	while (!(FUNC7(RFBI_SYSSTATUS) & (1 << 0)));

	l = FUNC7(RFBI_SYSCONFIG);
	/* Enable autoidle and smart-idle */
	l |= (1 << 0) | (2 << 3);
	FUNC8(RFBI_SYSCONFIG, l);

	/* 16-bit interface, ITE trigger mode, 16-bit data */
	l = (0x03 << 0) | (0x00 << 2) | (0x01 << 5) | (0x02 << 7);
	l |= (0 << 9) | (1 << 20) | (1 << 21);
	FUNC8(RFBI_CONFIG0, l);

	FUNC8(RFBI_DATA_CYCLE1_0, 0x00000010);

	l = FUNC7(RFBI_CONTROL);
	/* Select CS0, clear bypass mode */
	l = (0x01 << 2);
	FUNC8(RFBI_CONTROL, l);

	r = FUNC3(DISPC_IRQ_FRAMEMASK, rfbi_dma_callback,
				   NULL);
	if (r < 0) {
		FUNC1(fbdev->dev, "can't get DISPC irq\n");
		FUNC5(0);
		return r;
	}

	l = FUNC7(RFBI_REVISION);
	FUNC4("omapfb: RFBI version %d.%d initialized\n",
		(l >> 4) & 0x0f, l & 0x0f);

	FUNC5(0);

	return 0;
}