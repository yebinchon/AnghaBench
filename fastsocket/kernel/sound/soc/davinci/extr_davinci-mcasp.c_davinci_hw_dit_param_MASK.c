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
struct davinci_audio_dev {scalar_t__ base; } ;

/* Variables and functions */
 int ACLKXE ; 
 int AFSX ; 
 int AFSXE ; 
 int FUNC0 (int) ; 
 scalar_t__ DAVINCI_MCASP_ACLKXCTL_REG ; 
 scalar_t__ DAVINCI_MCASP_AHCLKXCTL_REG ; 
 scalar_t__ DAVINCI_MCASP_PDIR_REG ; 
 scalar_t__ DAVINCI_MCASP_TXDITCTL_REG ; 
 scalar_t__ DAVINCI_MCASP_TXFMCTL_REG ; 
 scalar_t__ DAVINCI_MCASP_TXFMT_REG ; 
 scalar_t__ DAVINCI_MCASP_TXMASK_REG ; 
 scalar_t__ DAVINCI_MCASP_TXTDM_REG ; 
 scalar_t__ DAVINCI_MCASP_XEVTCTL_REG ; 
 int DITEN ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  TXDATADMADIS ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int TX_ASYNC ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC7(struct davinci_audio_dev *dev)
{
	/* Set the PDIR for Serialiser as output */
	FUNC5(dev->base + DAVINCI_MCASP_PDIR_REG, AFSX);

	/* TXMASK for 24 bits */
	FUNC6(dev->base + DAVINCI_MCASP_TXMASK_REG, 0x00FFFFFF);

	/* Set the TX format : 24 bit right rotation, 32 bit slot, Pad 0
	   and LSB first */
	FUNC5(dev->base + DAVINCI_MCASP_TXFMT_REG,
						FUNC2(6) | FUNC3(15));

	/* Set TX frame synch : DIT Mode, 1 bit width, internal, rising edge */
	FUNC6(dev->base + DAVINCI_MCASP_TXFMCTL_REG,
						AFSXE | FUNC1(0x180));

	/* Set the TX tdm : for all the slots */
	FUNC6(dev->base + DAVINCI_MCASP_TXTDM_REG, 0xFFFFFFFF);

	/* Set the TX clock controls : div = 1 and internal */
	FUNC5(dev->base + DAVINCI_MCASP_ACLKXCTL_REG,
						ACLKXE | TX_ASYNC);

	FUNC4(dev->base + DAVINCI_MCASP_XEVTCTL_REG, TXDATADMADIS);

	/* Only 44100 and 48000 are valid, both have the same setting */
	FUNC5(dev->base + DAVINCI_MCASP_AHCLKXCTL_REG, FUNC0(3));

	/* Enable the DIT */
	FUNC5(dev->base + DAVINCI_MCASP_TXDITCTL_REG, DITEN);
}