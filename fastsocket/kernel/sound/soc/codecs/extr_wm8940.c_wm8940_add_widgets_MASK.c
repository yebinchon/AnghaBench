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
struct snd_soc_codec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  audio_map ; 
 int FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct snd_soc_codec*) ; 
 int /*<<< orphan*/  wm8940_dapm_widgets ; 

__attribute__((used)) static int FUNC4(struct snd_soc_codec *codec)
{
	int ret;

	ret = FUNC2(codec, wm8940_dapm_widgets,
					FUNC0(wm8940_dapm_widgets));
	if (ret)
		goto error_ret;
	ret = FUNC1(codec, audio_map, FUNC0(audio_map));
	if (ret)
		goto error_ret;
	ret = FUNC3(codec);

error_ret:
	return ret;
}