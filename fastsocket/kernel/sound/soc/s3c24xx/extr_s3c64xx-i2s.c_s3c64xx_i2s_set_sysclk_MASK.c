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
struct snd_soc_dai {int dummy; } ;
struct s3c_i2sv2_info {scalar_t__ regs; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ S3C2412_IISMOD ; 
#define  S3C64XX_CLKSRC_MUX 129 
#define  S3C64XX_CLKSRC_PCLK 128 
 int /*<<< orphan*/  S3C64XX_IISMOD_IMS_SYSMUX ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct s3c_i2sv2_info* FUNC1 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dai *cpu_dai,
				  int clk_id, unsigned int freq, int dir)
{
	struct s3c_i2sv2_info *i2s = FUNC1(cpu_dai);
	u32 iismod = FUNC0(i2s->regs + S3C2412_IISMOD);

	switch (clk_id) {
	case S3C64XX_CLKSRC_PCLK:
		iismod &= ~S3C64XX_IISMOD_IMS_SYSMUX;
		break;

	case S3C64XX_CLKSRC_MUX:
		iismod |= S3C64XX_IISMOD_IMS_SYSMUX;
		break;

	default:
		return -EINVAL;
	}

	FUNC2(iismod, i2s->regs + S3C2412_IISMOD);

	return 0;
}