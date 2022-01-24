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
struct twl4030_priv {int dummy; } ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_codec {int /*<<< orphan*/  dapm_paths; int /*<<< orphan*/  dapm_widgets; int /*<<< orphan*/  mutex; struct twl4030_priv* private_data; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_codec*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct snd_soc_device* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_device*) ; 
 struct snd_soc_device* twl4030_socdev ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct snd_soc_device *socdev = FUNC4(pdev);
	struct snd_soc_codec *codec;
	struct twl4030_priv *twl4030;

	codec = FUNC2(sizeof(struct snd_soc_codec), GFP_KERNEL);
	if (codec == NULL)
		return -ENOMEM;

	twl4030 = FUNC2(sizeof(struct twl4030_priv), GFP_KERNEL);
	if (twl4030 == NULL) {
		FUNC1(codec);
		return -ENOMEM;
	}

	codec->private_data = twl4030;
	socdev->card->codec = codec;
	FUNC3(&codec->mutex);
	FUNC0(&codec->dapm_widgets);
	FUNC0(&codec->dapm_paths);

	twl4030_socdev = socdev;
	FUNC5(socdev);

	return 0;
}