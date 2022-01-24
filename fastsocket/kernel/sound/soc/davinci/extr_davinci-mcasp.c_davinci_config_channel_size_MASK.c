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
typedef  int u32 ;
struct davinci_audio_dev {scalar_t__ base; } ;

/* Variables and functions */
#define  DAVINCI_AUDIO_WORD_12 134 
#define  DAVINCI_AUDIO_WORD_16 133 
#define  DAVINCI_AUDIO_WORD_20 132 
#define  DAVINCI_AUDIO_WORD_24 131 
#define  DAVINCI_AUDIO_WORD_28 130 
#define  DAVINCI_AUDIO_WORD_32 129 
#define  DAVINCI_AUDIO_WORD_8 128 
 scalar_t__ DAVINCI_MCASP_RXFMT_REG ; 
 scalar_t__ DAVINCI_MCASP_RXMASK_REG ; 
 scalar_t__ DAVINCI_MCASP_TXFMT_REG ; 
 scalar_t__ DAVINCI_MCASP_TXMASK_REG ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 

__attribute__((used)) static int FUNC6(struct davinci_audio_dev *dev,
				       int channel_size)
{
	u32 fmt = 0;
	u32 mask, rotate;

	switch (channel_size) {
	case DAVINCI_AUDIO_WORD_8:
		fmt = 0x03;
		rotate = 6;
		mask = 0x000000ff;
		break;

	case DAVINCI_AUDIO_WORD_12:
		fmt = 0x05;
		rotate = 5;
		mask = 0x00000fff;
		break;

	case DAVINCI_AUDIO_WORD_16:
		fmt = 0x07;
		rotate = 4;
		mask = 0x0000ffff;
		break;

	case DAVINCI_AUDIO_WORD_20:
		fmt = 0x09;
		rotate = 3;
		mask = 0x000fffff;
		break;

	case DAVINCI_AUDIO_WORD_24:
		fmt = 0x0B;
		rotate = 2;
		mask = 0x00ffffff;
		break;

	case DAVINCI_AUDIO_WORD_28:
		fmt = 0x0D;
		rotate = 1;
		mask = 0x0fffffff;
		break;

	case DAVINCI_AUDIO_WORD_32:
		fmt = 0x0F;
		rotate = 0;
		mask = 0xffffffff;
		break;

	default:
		return -EINVAL;
	}

	FUNC4(dev->base + DAVINCI_MCASP_RXFMT_REG,
					FUNC1(fmt), FUNC1(0x0F));
	FUNC4(dev->base + DAVINCI_MCASP_TXFMT_REG,
					FUNC3(fmt), FUNC3(0x0F));
	FUNC4(dev->base + DAVINCI_MCASP_TXFMT_REG, FUNC2(rotate),
							FUNC2(7));
	FUNC4(dev->base + DAVINCI_MCASP_RXFMT_REG, FUNC0(rotate),
							FUNC0(7));
	FUNC5(dev->base + DAVINCI_MCASP_TXMASK_REG, mask);
	FUNC5(dev->base + DAVINCI_MCASP_RXMASK_REG, mask);

	return 0;
}