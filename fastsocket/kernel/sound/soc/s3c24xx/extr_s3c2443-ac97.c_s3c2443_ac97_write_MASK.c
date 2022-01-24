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
struct snd_ac97 {int dummy; } ;
struct TYPE_2__ {scalar_t__ regs; } ;

/* Variables and functions */
 int FUNC0 (unsigned short) ; 
 int FUNC1 (unsigned short) ; 
 scalar_t__ S3C_AC97_CODEC_CMD ; 
 int S3C_AC97_CODEC_CMD_READ ; 
 scalar_t__ S3C_AC97_GLBCTRL ; 
 int S3C_AC97_GLBCTRL_CODECREADYIE ; 
 int /*<<< orphan*/  S3C_AC97_GLBSTAT_CODECREADY ; 
 int /*<<< orphan*/  ac97_completion ; 
 int /*<<< orphan*/  ac97_mutex ; 
 int /*<<< orphan*/  codec_ready ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (scalar_t__) ; 
 TYPE_1__ s3c24xx_ac97 ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct snd_ac97 *ac97, unsigned short reg,
	unsigned short val)
{
	u32 ac_glbctrl;
	u32 ac_codec_cmd;

	FUNC2(&ac97_mutex);

	codec_ready = S3C_AC97_GLBSTAT_CODECREADY;
	ac_codec_cmd = FUNC4(s3c24xx_ac97.regs + S3C_AC97_CODEC_CMD);
	ac_codec_cmd = FUNC0(reg) | FUNC1(val);
	FUNC7(ac_codec_cmd, s3c24xx_ac97.regs + S3C_AC97_CODEC_CMD);

	FUNC5(50);

	ac_glbctrl = FUNC4(s3c24xx_ac97.regs + S3C_AC97_GLBCTRL);
	ac_glbctrl |= S3C_AC97_GLBCTRL_CODECREADYIE;
	FUNC7(ac_glbctrl, s3c24xx_ac97.regs + S3C_AC97_GLBCTRL);

	FUNC6(&ac97_completion);

	ac_codec_cmd = FUNC4(s3c24xx_ac97.regs + S3C_AC97_CODEC_CMD);
	ac_codec_cmd |= S3C_AC97_CODEC_CMD_READ;
	FUNC7(ac_codec_cmd, s3c24xx_ac97.regs + S3C_AC97_CODEC_CMD);

	FUNC3(&ac97_mutex);

}