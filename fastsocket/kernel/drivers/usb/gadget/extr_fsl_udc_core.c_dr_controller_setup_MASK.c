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
struct fsl_udc {int phy_mode; unsigned int ep_qh_dma; int /*<<< orphan*/  ep_qh; } ;
struct TYPE_4__ {int /*<<< orphan*/  endpointlistaddr; int /*<<< orphan*/  usbsts; int /*<<< orphan*/  usbmode; int /*<<< orphan*/  usbcmd; int /*<<< orphan*/  portsc1; } ;
struct TYPE_3__ {int /*<<< orphan*/  snoop2; int /*<<< orphan*/  snoop1; int /*<<< orphan*/  control; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ETIMEDOUT ; 
 unsigned long FSL_UDC_RESET_TIMEOUT ; 
#define  FSL_USB2_PHY_SERIAL 131 
#define  FSL_USB2_PHY_ULPI 130 
#define  FSL_USB2_PHY_UTMI 129 
#define  FSL_USB2_PHY_UTMI_WIDE 128 
 unsigned int PORTSCX_PHY_TYPE_SEL ; 
 unsigned int PORTSCX_PORT_WIDTH ; 
 unsigned int PORTSCX_PTS_FSLS ; 
 unsigned int PORTSCX_PTS_ULPI ; 
 unsigned int PORTSCX_PTS_UTMI ; 
 unsigned int PORTSCX_PTW_16BIT ; 
 unsigned int SNOOP_SIZE_2GB ; 
 unsigned int USB_CMD_CTRL_RESET ; 
 unsigned int USB_CMD_RUN_STOP ; 
 unsigned int USB_CTRL_IOENB ; 
 unsigned int USB_EP_LIST_ADDRESS_MASK ; 
 unsigned int USB_MODE_CTRL_MODE_DEVICE ; 
 unsigned int USB_MODE_SETUP_LOCK_OFF ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_2__* dr_regs ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC7 (unsigned long,unsigned long) ; 
 TYPE_1__* usb_sys_regs ; 

__attribute__((used)) static int FUNC8(struct fsl_udc *udc)
{
	unsigned int tmp, portctrl;
#ifndef CONFIG_ARCH_MXC
	unsigned int ctrl;
#endif
	unsigned long timeout;
#define FSL_UDC_RESET_TIMEOUT 1000

	/* Config PHY interface */
	portctrl = FUNC5(&dr_regs->portsc1);
	portctrl &= ~(PORTSCX_PHY_TYPE_SEL | PORTSCX_PORT_WIDTH);
	switch (udc->phy_mode) {
	case FSL_USB2_PHY_ULPI:
		portctrl |= PORTSCX_PTS_ULPI;
		break;
	case FSL_USB2_PHY_UTMI_WIDE:
		portctrl |= PORTSCX_PTW_16BIT;
		/* fall through */
	case FSL_USB2_PHY_UTMI:
		portctrl |= PORTSCX_PTS_UTMI;
		break;
	case FSL_USB2_PHY_SERIAL:
		portctrl |= PORTSCX_PTS_FSLS;
		break;
	default:
		return -EINVAL;
	}
	FUNC6(portctrl, &dr_regs->portsc1);

	/* Stop and reset the usb controller */
	tmp = FUNC5(&dr_regs->usbcmd);
	tmp &= ~USB_CMD_RUN_STOP;
	FUNC6(tmp, &dr_regs->usbcmd);

	tmp = FUNC5(&dr_regs->usbcmd);
	tmp |= USB_CMD_CTRL_RESET;
	FUNC6(tmp, &dr_regs->usbcmd);

	/* Wait for reset to complete */
	timeout = jiffies + FSL_UDC_RESET_TIMEOUT;
	while (FUNC5(&dr_regs->usbcmd) & USB_CMD_CTRL_RESET) {
		if (FUNC7(jiffies, timeout)) {
			FUNC0("udc reset timeout!\n");
			return -ETIMEDOUT;
		}
		FUNC4();
	}

	/* Set the controller as device mode */
	tmp = FUNC5(&dr_regs->usbmode);
	tmp |= USB_MODE_CTRL_MODE_DEVICE;
	/* Disable Setup Lockout */
	tmp |= USB_MODE_SETUP_LOCK_OFF;
	FUNC6(tmp, &dr_regs->usbmode);

	/* Clear the setup status */
	FUNC6(0, &dr_regs->usbsts);

	tmp = udc->ep_qh_dma;
	tmp &= USB_EP_LIST_ADDRESS_MASK;
	FUNC6(tmp, &dr_regs->endpointlistaddr);

	FUNC1("vir[qh_base] is %p phy[qh_base] is 0x%8x reg is 0x%8x",
		udc->ep_qh, (int)tmp,
		FUNC5(&dr_regs->endpointlistaddr));

	/* Config control enable i/o output, cpu endian register */
#ifndef CONFIG_ARCH_MXC
	ctrl = FUNC2(&usb_sys_regs->control);
	ctrl |= USB_CTRL_IOENB;
	FUNC3(ctrl, &usb_sys_regs->control);
#endif

#if defined(CONFIG_PPC32) && !defined(CONFIG_NOT_COHERENT_CACHE)
	/* Turn on cache snooping hardware, since some PowerPC platforms
	 * wholly rely on hardware to deal with cache coherent. */

	/* Setup Snooping for all the 4GB space */
	tmp = SNOOP_SIZE_2GB;	/* starts from 0x0, size 2G */
	__raw_writel(tmp, &usb_sys_regs->snoop1);
	tmp |= 0x80000000;	/* starts from 0x8000000, size 2G */
	__raw_writel(tmp, &usb_sys_regs->snoop2);
#endif

	return 0;
}