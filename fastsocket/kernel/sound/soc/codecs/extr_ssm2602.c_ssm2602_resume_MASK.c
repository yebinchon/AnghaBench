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
typedef  int u8 ;
typedef  int u16 ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_codec {int* reg_cache; int /*<<< orphan*/  suspend_bias_level; int /*<<< orphan*/  control_data; int /*<<< orphan*/  (* hw_write ) (int /*<<< orphan*/ ,int*,int) ;} ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SND_SOC_BIAS_STANDBY ; 
 struct snd_soc_device* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  ssm2602_reg ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct snd_soc_device *socdev = FUNC1(pdev);
	struct snd_soc_codec *codec = socdev->card->codec;
	int i;
	u8 data[2];
	u16 *cache = codec->reg_cache;

	/* Sync reg_cache with the hardware */
	for (i = 0; i < FUNC0(ssm2602_reg); i++) {
		data[0] = (i << 1) | ((cache[i] >> 8) & 0x0001);
		data[1] = cache[i] & 0x00ff;
		codec->hw_write(codec->control_data, data, 2);
	}
	FUNC2(codec, SND_SOC_BIAS_STANDBY);
	FUNC2(codec, codec->suspend_bias_level);
	return 0;
}