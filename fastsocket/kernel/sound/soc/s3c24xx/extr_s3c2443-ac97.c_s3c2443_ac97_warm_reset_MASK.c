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
typedef  scalar_t__ u32 ;
struct snd_ac97 {int dummy; } ;
struct TYPE_2__ {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ S3C_AC97_GLBCTRL ; 
 scalar_t__ S3C_AC97_GLBCTRL_WARMRESET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 TYPE_1__ s3c24xx_ac97 ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct snd_ac97 *ac97)
{
	u32 ac_glbctrl;

	ac_glbctrl = FUNC1(s3c24xx_ac97.regs + S3C_AC97_GLBCTRL);
	ac_glbctrl = S3C_AC97_GLBCTRL_WARMRESET;
	FUNC2(ac_glbctrl, s3c24xx_ac97.regs + S3C_AC97_GLBCTRL);
	FUNC0(1);

	ac_glbctrl = 0;
	FUNC2(ac_glbctrl, s3c24xx_ac97.regs + S3C_AC97_GLBCTRL);
	FUNC0(1);
}