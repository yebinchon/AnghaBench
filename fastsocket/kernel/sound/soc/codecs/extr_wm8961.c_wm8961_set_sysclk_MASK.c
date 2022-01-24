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
typedef  int /*<<< orphan*/  u16 ;
struct wm8961_priv {unsigned int sysclk; } ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int /*<<< orphan*/  dev; struct wm8961_priv* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  WM8961_CLOCKING1 ; 
 int /*<<< orphan*/  WM8961_MCLKDIV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dai *dai, int clk_id,
			     unsigned int freq,
			     int dir)
{
	struct snd_soc_codec *codec = dai->codec;
	struct wm8961_priv *wm8961 = codec->private_data;
	u16 reg = FUNC2(codec, WM8961_CLOCKING1);

	if (freq > 33000000) {
		FUNC1(codec->dev, "MCLK must be <33MHz\n");
		return -EINVAL;
	}

	if (freq > 16500000) {
		FUNC0(codec->dev, "Using MCLK/2 for %dHz MCLK\n", freq);
		reg |= WM8961_MCLKDIV;
		freq /= 2;
	} else {
		FUNC0(codec->dev, "Using MCLK/1 for %dHz MCLK\n", freq);
		reg &= WM8961_MCLKDIV;
	}

	FUNC3(codec, WM8961_CLOCKING1, reg);

	wm8961->sysclk = freq;

	return 0;
}