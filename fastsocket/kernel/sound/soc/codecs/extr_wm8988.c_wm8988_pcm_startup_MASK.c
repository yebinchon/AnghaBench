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
struct wm8988_priv {int /*<<< orphan*/  sysclk_constraints; int /*<<< orphan*/  sysclk; } ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int /*<<< orphan*/  dev; struct wm8988_priv* private_data; } ;
struct snd_pcm_substream {int /*<<< orphan*/  runtime; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream,
			      struct snd_soc_dai *dai)
{
	struct snd_soc_codec *codec = dai->codec;
	struct wm8988_priv *wm8988 = codec->private_data;

	/* The set of sample rates that can be supported depends on the
	 * MCLK supplied to the CODEC - enforce this.
	 */
	if (!wm8988->sysclk) {
		FUNC0(codec->dev,
			"No MCLK configured, call set_sysclk() on init\n");
		return -EINVAL;
	}

	FUNC1(substream->runtime, 0,
				   SNDRV_PCM_HW_PARAM_RATE,
				   wm8988->sysclk_constraints);

	return 0;
}