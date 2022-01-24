#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ count; } ;
struct wm8523_priv {unsigned int sysclk; unsigned int* rate_constraint_list; TYPE_1__ rate_constraint; } ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int /*<<< orphan*/  dev; struct wm8523_priv* private_data; } ;
struct TYPE_5__ {unsigned int ratio; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 TYPE_2__* lrclk_ratios ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *codec_dai,
		int clk_id, unsigned int freq, int dir)
{
	struct snd_soc_codec *codec = codec_dai->codec;
	struct wm8523_priv *wm8523 = codec->private_data;
	unsigned int val;
	int i;

	wm8523->sysclk = freq;

	wm8523->rate_constraint.count = 0;
	for (i = 0; i < FUNC0(lrclk_ratios); i++) {
		val = freq / lrclk_ratios[i].ratio;
		/* Check that it's a standard rate since core can't
		 * cope with others and having the odd rates confuses
		 * constraint matching.
		 */
		switch (val) {
		case 8000:
		case 11025:
		case 16000:
		case 22050:
		case 32000:
		case 44100:
		case 48000:
		case 64000:
		case 88200:
		case 96000:
		case 176400:
		case 192000:
			FUNC1(codec->dev, "Supported sample rate: %dHz\n",
				val);
			wm8523->rate_constraint_list[i] = val;
			wm8523->rate_constraint.count++;
			break;
		default:
			FUNC1(codec->dev, "Skipping sample rate: %dHz\n",
				val);
		}
	}

	/* Need at least one supported rate... */
	if (wm8523->rate_constraint.count == 0)
		return -EINVAL;

	return 0;
}