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
typedef  int /*<<< orphan*/  u32 ;
struct seq_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  S3C2410_UDC_EP_INT_EN_REG ; 
 int /*<<< orphan*/  S3C2410_UDC_EP_INT_REG ; 
 int /*<<< orphan*/  S3C2410_UDC_FUNC_ADDR_REG ; 
 int /*<<< orphan*/  S3C2410_UDC_INDEX_REG ; 
 int /*<<< orphan*/  S3C2410_UDC_IN_CSR1_REG ; 
 int /*<<< orphan*/  S3C2410_UDC_IN_CSR2_REG ; 
 int /*<<< orphan*/  S3C2410_UDC_PWR_REG ; 
 int /*<<< orphan*/  S3C2410_UDC_USB_INT_EN_REG ; 
 int /*<<< orphan*/  S3C2410_UDC_USB_INT_REG ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct seq_file *m, void *p)
{
	u32 addr_reg,pwr_reg,ep_int_reg,usb_int_reg;
	u32 ep_int_en_reg, usb_int_en_reg, ep0_csr;
	u32 ep1_i_csr1,ep1_i_csr2,ep1_o_csr1,ep1_o_csr2;
	u32 ep2_i_csr1,ep2_i_csr2,ep2_o_csr1,ep2_o_csr2;

	addr_reg       = FUNC1(S3C2410_UDC_FUNC_ADDR_REG);
	pwr_reg        = FUNC1(S3C2410_UDC_PWR_REG);
	ep_int_reg     = FUNC1(S3C2410_UDC_EP_INT_REG);
	usb_int_reg    = FUNC1(S3C2410_UDC_USB_INT_REG);
	ep_int_en_reg  = FUNC1(S3C2410_UDC_EP_INT_EN_REG);
	usb_int_en_reg = FUNC1(S3C2410_UDC_USB_INT_EN_REG);
	FUNC2(0, S3C2410_UDC_INDEX_REG);
	ep0_csr        = FUNC1(S3C2410_UDC_IN_CSR1_REG);
	FUNC2(1, S3C2410_UDC_INDEX_REG);
	ep1_i_csr1     = FUNC1(S3C2410_UDC_IN_CSR1_REG);
	ep1_i_csr2     = FUNC1(S3C2410_UDC_IN_CSR2_REG);
	ep1_o_csr1     = FUNC1(S3C2410_UDC_IN_CSR1_REG);
	ep1_o_csr2     = FUNC1(S3C2410_UDC_IN_CSR2_REG);
	FUNC2(2, S3C2410_UDC_INDEX_REG);
	ep2_i_csr1     = FUNC1(S3C2410_UDC_IN_CSR1_REG);
	ep2_i_csr2     = FUNC1(S3C2410_UDC_IN_CSR2_REG);
	ep2_o_csr1     = FUNC1(S3C2410_UDC_IN_CSR1_REG);
	ep2_o_csr2     = FUNC1(S3C2410_UDC_IN_CSR2_REG);

	FUNC0(m, "FUNC_ADDR_REG  : 0x%04X\n"
		 "PWR_REG        : 0x%04X\n"
		 "EP_INT_REG     : 0x%04X\n"
		 "USB_INT_REG    : 0x%04X\n"
		 "EP_INT_EN_REG  : 0x%04X\n"
		 "USB_INT_EN_REG : 0x%04X\n"
		 "EP0_CSR        : 0x%04X\n"
		 "EP1_I_CSR1     : 0x%04X\n"
		 "EP1_I_CSR2     : 0x%04X\n"
		 "EP1_O_CSR1     : 0x%04X\n"
		 "EP1_O_CSR2     : 0x%04X\n"
		 "EP2_I_CSR1     : 0x%04X\n"
		 "EP2_I_CSR2     : 0x%04X\n"
		 "EP2_O_CSR1     : 0x%04X\n"
		 "EP2_O_CSR2     : 0x%04X\n",
			addr_reg,pwr_reg,ep_int_reg,usb_int_reg,
			ep_int_en_reg, usb_int_en_reg, ep0_csr,
			ep1_i_csr1,ep1_i_csr2,ep1_o_csr1,ep1_o_csr2,
			ep2_i_csr1,ep2_i_csr2,ep2_o_csr1,ep2_o_csr2
		);

	return 0;
}