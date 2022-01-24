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
typedef  int /*<<< orphan*/  test_packet_buffer ;
struct usba_udc {int test_mode; TYPE_1__* pdev; } ;
struct usba_ep {int /*<<< orphan*/  fifo; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BK_NUMBER ; 
 int /*<<< orphan*/  CFG ; 
 int /*<<< orphan*/  CTL_ENB ; 
 int EINVAL ; 
 int /*<<< orphan*/  EPT_SIZE ; 
 int /*<<< orphan*/  EPT_TYPE ; 
 int /*<<< orphan*/  SET_STA ; 
 int /*<<< orphan*/  SPEED_CFG ; 
 int /*<<< orphan*/  TST ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int USBA_EPT_DIR_IN ; 
 int USBA_EPT_ENABLE ; 
 int USBA_EPT_MAPPED ; 
 int USBA_EPT_SIZE_64 ; 
 int USBA_EPT_TYPE_BULK ; 
 int USBA_SPEED_CFG_FORCE_HIGH ; 
 int USBA_TST_J_MODE ; 
 int USBA_TST_K_MODE ; 
 int USBA_TST_PKT_MODE ; 
 int USBA_TX_PK_RDY ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usba_udc*) ; 
 int /*<<< orphan*/  FUNC5 (struct usba_udc*,struct usba_ep*) ; 
 struct usba_ep* usba_ep ; 
 int FUNC6 (struct usba_ep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usba_ep*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct usba_udc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct usba_udc *udc)
{
	static const char test_packet_buffer[] = {
		/* JKJKJKJK * 9 */
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		/* JJKKJJKK * 8 */
		0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA,
		/* JJKKJJKK * 8 */
		0xEE, 0xEE, 0xEE, 0xEE, 0xEE, 0xEE, 0xEE, 0xEE,
		/* JJJJJJJKKKKKKK * 8 */
		0xFE, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
		/* JJJJJJJK * 8 */
		0x7F, 0xBF, 0xDF, 0xEF, 0xF7, 0xFB, 0xFD,
		/* {JKKKKKKK * 10}, JK */
		0xFC, 0x7E, 0xBF, 0xDF, 0xEF, 0xF7, 0xFB, 0xFD, 0x7E
	};
	struct usba_ep *ep;
	struct device *dev = &udc->pdev->dev;
	int test_mode;

	test_mode = udc->test_mode;

	/* Start from a clean slate */
	FUNC4(udc);

	switch (test_mode) {
	case 0x0100:
		/* Test_J */
		FUNC8(udc, TST, USBA_TST_J_MODE);
		FUNC2(dev, "Entering Test_J mode...\n");
		break;
	case 0x0200:
		/* Test_K */
		FUNC8(udc, TST, USBA_TST_K_MODE);
		FUNC2(dev, "Entering Test_K mode...\n");
		break;
	case 0x0300:
		/*
		 * Test_SE0_NAK: Force high-speed mode and set up ep0
		 * for Bulk IN transfers
		 */
		ep = &usba_ep[0];
		FUNC8(udc, TST,
				FUNC0(SPEED_CFG, USBA_SPEED_CFG_FORCE_HIGH));
		FUNC7(ep, CFG,
				FUNC0(EPT_SIZE, USBA_EPT_SIZE_64)
				| USBA_EPT_DIR_IN
				| FUNC0(EPT_TYPE, USBA_EPT_TYPE_BULK)
				| FUNC0(BK_NUMBER, 1));
		if (!(FUNC6(ep, CFG) & USBA_EPT_MAPPED)) {
			FUNC5(udc, ep);
			FUNC1(dev, "Test_SE0_NAK: ep0 not mapped\n");
		} else {
			FUNC7(ep, CTL_ENB, USBA_EPT_ENABLE);
			FUNC2(dev, "Entering Test_SE0_NAK mode...\n");
		}
		break;
	case 0x0400:
		/* Test_Packet */
		ep = &usba_ep[0];
		FUNC7(ep, CFG,
				FUNC0(EPT_SIZE, USBA_EPT_SIZE_64)
				| USBA_EPT_DIR_IN
				| FUNC0(EPT_TYPE, USBA_EPT_TYPE_BULK)
				| FUNC0(BK_NUMBER, 1));
		if (!(FUNC6(ep, CFG) & USBA_EPT_MAPPED)) {
			FUNC5(udc, ep);
			FUNC1(dev, "Test_Packet: ep0 not mapped\n");
		} else {
			FUNC7(ep, CTL_ENB, USBA_EPT_ENABLE);
			FUNC8(udc, TST, USBA_TST_PKT_MODE);
			FUNC3(ep->fifo, test_packet_buffer,
					sizeof(test_packet_buffer));
			FUNC7(ep, SET_STA, USBA_TX_PK_RDY);
			FUNC2(dev, "Entering Test_Packet mode...\n");
		}
		break;
	default:
		FUNC1(dev, "Invalid test mode: 0x%04x\n", test_mode);
		return -EINVAL;
	}

	return 0;
}