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
struct wm8993_priv {int sysclk_source; int mclk_rate; int sysclk_rate; int fll_fout; } ;
struct snd_soc_codec {int /*<<< orphan*/  dev; struct wm8993_priv* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  WM8993_CLOCKING_2 ; 
 unsigned int WM8993_MCLK_DIV ; 
#define  WM8993_SYSCLK_FLL 129 
#define  WM8993_SYSCLK_MCLK 128 
 unsigned int WM8993_SYSCLK_SRC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC2 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_codec*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_codec *codec)
{
	struct wm8993_priv *wm8993 = codec->private_data;
	unsigned int reg;

	/* This should be done on init() for bypass paths */
	switch (wm8993->sysclk_source) {
	case WM8993_SYSCLK_MCLK:
		FUNC0(codec->dev, "Using %dHz MCLK\n", wm8993->mclk_rate);

		reg = FUNC2(codec, WM8993_CLOCKING_2);
		reg &= ~(WM8993_MCLK_DIV | WM8993_SYSCLK_SRC);
		if (wm8993->mclk_rate > 13500000) {
			reg |= WM8993_MCLK_DIV;
			wm8993->sysclk_rate = wm8993->mclk_rate / 2;
		} else {
			reg &= ~WM8993_MCLK_DIV;
			wm8993->sysclk_rate = wm8993->mclk_rate;
		}
		FUNC3(codec, WM8993_CLOCKING_2, reg);
		break;

	case WM8993_SYSCLK_FLL:
		FUNC0(codec->dev, "Using %dHz FLL clock\n",
			wm8993->fll_fout);

		reg = FUNC2(codec, WM8993_CLOCKING_2);
		reg |= WM8993_SYSCLK_SRC;
		if (wm8993->fll_fout > 13500000) {
			reg |= WM8993_MCLK_DIV;
			wm8993->sysclk_rate = wm8993->fll_fout / 2;
		} else {
			reg &= ~WM8993_MCLK_DIV;
			wm8993->sysclk_rate = wm8993->fll_fout;
		}
		FUNC3(codec, WM8993_CLOCKING_2, reg);
		break;

	default:
		FUNC1(codec->dev, "System clock not configured\n");
		return -EINVAL;
	}

	FUNC0(codec->dev, "CLK_SYS is %dHz\n", wm8993->sysclk_rate);

	return 0;
}