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
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ S3C_AC97_GLBCTRL ; 
 int S3C_AC97_GLBCTRL_CODECREADYIE ; 
 scalar_t__ S3C_AC97_GLBSTAT ; 
 int /*<<< orphan*/  ac97_completion ; 
 int codec_ready ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (scalar_t__) ; 
 TYPE_1__ s3c24xx_ac97 ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	int status;
	u32 ac_glbctrl;

	status = FUNC1(s3c24xx_ac97.regs + S3C_AC97_GLBSTAT) & codec_ready;

	if (status) {
		ac_glbctrl = FUNC1(s3c24xx_ac97.regs + S3C_AC97_GLBCTRL);
		ac_glbctrl &= ~S3C_AC97_GLBCTRL_CODECREADYIE;
		FUNC2(ac_glbctrl, s3c24xx_ac97.regs + S3C_AC97_GLBCTRL);
		FUNC0(&ac97_completion);
	}
	return IRQ_HANDLED;
}