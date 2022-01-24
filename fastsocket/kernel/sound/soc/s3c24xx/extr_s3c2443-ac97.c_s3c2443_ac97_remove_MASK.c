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
struct snd_soc_dai {int dummy; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  regs; int /*<<< orphan*/  ac97_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_S3C244x_AC97 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__ s3c24xx_ac97 ; 

__attribute__((used)) static void FUNC4(struct platform_device *pdev,
				struct snd_soc_dai *dai)
{
	FUNC2(IRQ_S3C244x_AC97, NULL);
	FUNC0(s3c24xx_ac97.ac97_clk);
	FUNC1(s3c24xx_ac97.ac97_clk);
	FUNC3(s3c24xx_ac97.regs);
}