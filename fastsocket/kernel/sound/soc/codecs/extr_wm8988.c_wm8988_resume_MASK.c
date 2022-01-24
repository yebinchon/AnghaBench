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
struct snd_soc_codec {int* reg_cache; int /*<<< orphan*/  control_data; int /*<<< orphan*/  (* hw_write ) (int /*<<< orphan*/ ,int*,int) ;} ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;

/* Variables and functions */
 int /*<<< orphan*/  SND_SOC_BIAS_STANDBY ; 
 int WM8988_NUM_REG ; 
 int WM8988_RESET ; 
 struct snd_soc_device* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct snd_soc_device *socdev = FUNC0(pdev);
	struct snd_soc_codec *codec = socdev->card->codec;
	int i;
	u8 data[2];
	u16 *cache = codec->reg_cache;

	/* Sync reg_cache with the hardware */
	for (i = 0; i < WM8988_NUM_REG; i++) {
		if (i == WM8988_RESET)
			continue;
		data[0] = (i << 1) | ((cache[i] >> 8) & 0x0001);
		data[1] = cache[i] & 0x00ff;
		codec->hw_write(codec->control_data, data, 2);
	}

	FUNC2(codec, SND_SOC_BIAS_STANDBY);

	return 0;
}