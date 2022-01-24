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
struct TYPE_2__ {int /*<<< orphan*/  speed; } ;
struct s3c_hsotg {scalar_t__ regs; int /*<<< orphan*/  dev; TYPE_1__ gadget; } ;

/* Variables and functions */
 int EP0_MPS_LIMIT ; 
 scalar_t__ S3C_DIEPCTL0 ; 
 scalar_t__ S3C_DOEPCTL0 ; 
 scalar_t__ S3C_DSTS ; 
#define  S3C_DSTS_EnumSpd_FS 131 
#define  S3C_DSTS_EnumSpd_FS48 130 
#define  S3C_DSTS_EnumSpd_HS 129 
#define  S3C_DSTS_EnumSpd_LS 128 
 int S3C_DSTS_EnumSpd_MASK ; 
 int S3C_HSOTG_EPS ; 
 int /*<<< orphan*/  USB_SPEED_FULL ; 
 int /*<<< orphan*/  USB_SPEED_HIGH ; 
 int /*<<< orphan*/  USB_SPEED_LOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct s3c_hsotg*) ; 
 int /*<<< orphan*/  FUNC4 (struct s3c_hsotg*,int,int) ; 

__attribute__((used)) static void FUNC5(struct s3c_hsotg *hsotg)
{
	u32 dsts = FUNC2(hsotg->regs + S3C_DSTS);
	int ep0_mps = 0, ep_mps;

	/* This should signal the finish of the enumeration phase
	 * of the USB handshaking, so we should now know what rate
	 * we connected at. */

	FUNC0(hsotg->dev, "EnumDone (DSTS=0x%08x)\n", dsts);

	/* note, since we're limited by the size of transfer on EP0, and
	 * it seems IN transfers must be a even number of packets we do
	 * not advertise a 64byte MPS on EP0. */

	/* catch both EnumSpd_FS and EnumSpd_FS48 */
	switch (dsts & S3C_DSTS_EnumSpd_MASK) {
	case S3C_DSTS_EnumSpd_FS:
	case S3C_DSTS_EnumSpd_FS48:
		hsotg->gadget.speed = USB_SPEED_FULL;
		FUNC1(hsotg->dev, "new device is full-speed\n");

		ep0_mps = EP0_MPS_LIMIT;
		ep_mps = 64;
		break;

	case S3C_DSTS_EnumSpd_HS:
		FUNC1(hsotg->dev, "new device is high-speed\n");
		hsotg->gadget.speed = USB_SPEED_HIGH;

		ep0_mps = EP0_MPS_LIMIT;
		ep_mps = 512;
		break;

	case S3C_DSTS_EnumSpd_LS:
		hsotg->gadget.speed = USB_SPEED_LOW;
		FUNC1(hsotg->dev, "new device is low-speed\n");

		/* note, we don't actually support LS in this driver at the
		 * moment, and the documentation seems to imply that it isn't
		 * supported by the PHYs on some of the devices.
		 */
		break;
	}

	/* we should now know the maximum packet size for an
	 * endpoint, so set the endpoints to a default value. */

	if (ep0_mps) {
		int i;
		FUNC4(hsotg, 0, ep0_mps);
		for (i = 1; i < S3C_HSOTG_EPS; i++)
			FUNC4(hsotg, i, ep_mps);
	}

	/* ensure after enumeration our EP0 is active */

	FUNC3(hsotg);

	FUNC0(hsotg->dev, "EP0: DIEPCTL0=0x%08x, DOEPCTL0=0x%08x\n",
		FUNC2(hsotg->regs + S3C_DIEPCTL0),
		FUNC2(hsotg->regs + S3C_DOEPCTL0));
}