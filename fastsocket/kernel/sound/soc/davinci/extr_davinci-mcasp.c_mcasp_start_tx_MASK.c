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
typedef  size_t u8 ;
typedef  int u32 ;
struct davinci_audio_dev {size_t num_serializer; scalar_t__* serial_dir; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ DAVINCI_MCASP_GBLCTLX_REG ; 
 scalar_t__ DAVINCI_MCASP_TXBUF_REG ; 
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  TXCLKRST ; 
 int /*<<< orphan*/  TXFSRST ; 
 int /*<<< orphan*/  TXHCLKRST ; 
 int /*<<< orphan*/  TXSERCLR ; 
 int /*<<< orphan*/  TXSMRST ; 
 int TXSTATE ; 
 scalar_t__ TX_MODE ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct davinci_audio_dev *dev)
{
	u8 offset = 0, i;
	u32 cnt;

	FUNC2(dev->base + DAVINCI_MCASP_GBLCTLX_REG, TXHCLKRST);
	FUNC2(dev->base + DAVINCI_MCASP_GBLCTLX_REG, TXCLKRST);
	FUNC2(dev->base + DAVINCI_MCASP_GBLCTLX_REG, TXSERCLR);
	FUNC3(dev->base + DAVINCI_MCASP_TXBUF_REG, 0);

	FUNC2(dev->base + DAVINCI_MCASP_GBLCTLX_REG, TXSMRST);
	FUNC2(dev->base + DAVINCI_MCASP_GBLCTLX_REG, TXFSRST);
	FUNC3(dev->base + DAVINCI_MCASP_TXBUF_REG, 0);
	for (i = 0; i < dev->num_serializer; i++) {
		if (dev->serial_dir[i] == TX_MODE) {
			offset = i;
			break;
		}
	}

	/* wait for TX ready */
	cnt = 0;
	while (!(FUNC1(dev->base + FUNC0(offset)) &
		 TXSTATE) && (cnt < 100000))
		cnt++;

	FUNC3(dev->base + DAVINCI_MCASP_TXBUF_REG, 0);
}