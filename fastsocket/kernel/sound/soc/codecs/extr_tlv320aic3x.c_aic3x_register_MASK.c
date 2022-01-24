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
struct snd_soc_codec {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct snd_soc_codec* aic3x_codec ; 
 int /*<<< orphan*/  aic3x_dai ; 
 int FUNC0 (struct snd_soc_codec*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct snd_soc_codec*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_codec*) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_codec *codec)
{
	int ret;

	ret = FUNC0(codec);
	if (ret < 0) {
		FUNC1(codec->dev, "Failed to initialise device\n");
		return ret;
	}

	aic3x_codec = codec;

	ret = FUNC2(codec);
	if (ret) {
		FUNC1(codec->dev, "Failed to register codec\n");
		return ret;
	}

	ret = FUNC3(&aic3x_dai);
	if (ret) {
		FUNC1(codec->dev, "Failed to register dai\n");
		FUNC4(codec);
		return ret;
	}

	return 0;
}