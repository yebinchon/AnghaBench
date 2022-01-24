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
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_codec {int dummy; } ;
struct platform_device {int dummy; } ;
typedef  int /*<<< orphan*/  pm_message_t ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;

/* Variables and functions */
 int /*<<< orphan*/  SND_SOC_BIAS_OFF ; 
 int /*<<< orphan*/  TLV320AIC23_ACTIVE ; 
 struct snd_soc_device* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev,
			       pm_message_t state)
{
	struct snd_soc_device *socdev = FUNC0(pdev);
	struct snd_soc_codec *codec = socdev->card->codec;

	FUNC2(codec, TLV320AIC23_ACTIVE, 0x0);
	FUNC1(codec, SND_SOC_BIAS_OFF);

	return 0;
}