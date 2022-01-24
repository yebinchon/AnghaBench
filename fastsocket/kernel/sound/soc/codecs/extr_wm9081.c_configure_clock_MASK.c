#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wm9081_priv {int sysclk_source; int mclk_rate; int sysclk_rate; int bclk; int fs; int /*<<< orphan*/  master; } ;
struct snd_soc_codec {int /*<<< orphan*/  dev; struct wm9081_priv* private_data; } ;
struct TYPE_3__ {int ratio; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 unsigned int WM9081_CLK_SRC_SEL ; 
 int /*<<< orphan*/  WM9081_CLOCK_CONTROL_1 ; 
 int /*<<< orphan*/  WM9081_CLOCK_CONTROL_3 ; 
 unsigned int WM9081_MCLKDIV2 ; 
#define  WM9081_SYSCLK_FLL_MCLK 129 
#define  WM9081_SYSCLK_MCLK 128 
 TYPE_1__* clk_sys_rates ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 unsigned int FUNC2 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_codec*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC4 (struct snd_soc_codec*,int const,int,int) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_codec *codec)
{
	struct wm9081_priv *wm9081 = codec->private_data;
	int new_sysclk, i, target;
	unsigned int reg;
	int ret = 0;
	int mclkdiv = 0;
	int fll = 0;

	switch (wm9081->sysclk_source) {
	case WM9081_SYSCLK_MCLK:
		if (wm9081->mclk_rate > 12225000) {
			mclkdiv = 1;
			wm9081->sysclk_rate = wm9081->mclk_rate / 2;
		} else {
			wm9081->sysclk_rate = wm9081->mclk_rate;
		}
		FUNC4(codec, WM9081_SYSCLK_FLL_MCLK, 0, 0);
		break;

	case WM9081_SYSCLK_FLL_MCLK:
		/* If we have a sample rate calculate a CLK_SYS that
		 * gives us a suitable DAC configuration, plus BCLK.
		 * Ideally we would check to see if we can clock
		 * directly from MCLK and only use the FLL if this is
		 * not the case, though care must be taken with free
		 * running mode.
		 */
		if (wm9081->master && wm9081->bclk) {
			/* Make sure we can generate CLK_SYS and BCLK
			 * and that we've got 3MHz for optimal
			 * performance. */
			for (i = 0; i < FUNC0(clk_sys_rates); i++) {
				target = wm9081->fs * clk_sys_rates[i].ratio;
				new_sysclk = target;
				if (target >= wm9081->bclk &&
				    target > 3000000)
					break;
			}

			if (i == FUNC0(clk_sys_rates))
				return -EINVAL;

		} else if (wm9081->fs) {
			for (i = 0; i < FUNC0(clk_sys_rates); i++) {
				new_sysclk = clk_sys_rates[i].ratio
					* wm9081->fs;
				if (new_sysclk > 3000000)
					break;
			}

			if (i == FUNC0(clk_sys_rates))
				return -EINVAL;

		} else {
			new_sysclk = 12288000;
		}

		ret = FUNC4(codec, WM9081_SYSCLK_FLL_MCLK,
				     wm9081->mclk_rate, new_sysclk);
		if (ret == 0) {
			wm9081->sysclk_rate = new_sysclk;

			/* Switch SYSCLK over to FLL */
			fll = 1;
		} else {
			wm9081->sysclk_rate = wm9081->mclk_rate;
		}
		break;

	default:
		return -EINVAL;
	}

	reg = FUNC2(codec, WM9081_CLOCK_CONTROL_1);
	if (mclkdiv)
		reg |= WM9081_MCLKDIV2;
	else
		reg &= ~WM9081_MCLKDIV2;
	FUNC3(codec, WM9081_CLOCK_CONTROL_1, reg);

	reg = FUNC2(codec, WM9081_CLOCK_CONTROL_3);
	if (fll)
		reg |= WM9081_CLK_SRC_SEL;
	else
		reg &= ~WM9081_CLK_SRC_SEL;
	FUNC3(codec, WM9081_CLOCK_CONTROL_3, reg);

	FUNC1(codec->dev, "CLK_SYS is %dHz\n", wm9081->sysclk_rate);

	return ret;
}