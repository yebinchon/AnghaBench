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
struct snd_soc_dai {int id; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  S3C64XX_GPD0_I2S0_CLK ; 
 int /*<<< orphan*/  S3C64XX_GPD1_I2S0_CDCLK ; 
 int /*<<< orphan*/  S3C64XX_GPD2_I2S0_LRCLK ; 
 int /*<<< orphan*/  S3C64XX_GPD3_I2S0_DI ; 
 int /*<<< orphan*/  S3C64XX_GPD4_I2S0_D0 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  S3C64XX_GPE0_I2S1_CLK ; 
 int /*<<< orphan*/  S3C64XX_GPE1_I2S1_CDCLK ; 
 int /*<<< orphan*/  S3C64XX_GPE2_I2S1_LRCLK ; 
 int /*<<< orphan*/  S3C64XX_GPE3_I2S1_DI ; 
 int /*<<< orphan*/  S3C64XX_GPE4_I2S1_D0 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev,
			     struct snd_soc_dai *dai)
{
	/* configure GPIO for i2s port */
	switch (dai->id) {
	case 0:
		FUNC2(FUNC0(0), S3C64XX_GPD0_I2S0_CLK);
		FUNC2(FUNC0(1), S3C64XX_GPD1_I2S0_CDCLK);
		FUNC2(FUNC0(2), S3C64XX_GPD2_I2S0_LRCLK);
		FUNC2(FUNC0(3), S3C64XX_GPD3_I2S0_DI);
		FUNC2(FUNC0(4), S3C64XX_GPD4_I2S0_D0);
		break;
	case 1:
		FUNC2(FUNC1(0), S3C64XX_GPE0_I2S1_CLK);
		FUNC2(FUNC1(1), S3C64XX_GPE1_I2S1_CDCLK);
		FUNC2(FUNC1(2), S3C64XX_GPE2_I2S1_LRCLK);
		FUNC2(FUNC1(3), S3C64XX_GPE3_I2S1_DI);
		FUNC2(FUNC1(4), S3C64XX_GPE4_I2S1_D0);
	}

	return 0;
}