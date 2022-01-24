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
typedef  int u8 ;
typedef  int u16 ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;
struct _pll_div {int n; int k; scalar_t__ div2; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM8990_CLOCKING_2 ; 
 int /*<<< orphan*/  WM8990_PLL1 ; 
 int /*<<< orphan*/  WM8990_PLL2 ; 
 int /*<<< orphan*/  WM8990_PLL3 ; 
 int WM8990_PLL_ENA ; 
 int /*<<< orphan*/  WM8990_POWER_MANAGEMENT_2 ; 
 int WM8990_PRESCALE ; 
 int WM8990_SDM ; 
 int WM8990_SYSCLK_SRC ; 
 int /*<<< orphan*/  FUNC0 (struct _pll_div*,unsigned int,unsigned int) ; 
 int FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dai *codec_dai,
		int pll_id, unsigned int freq_in, unsigned int freq_out)
{
	u16 reg;
	struct snd_soc_codec *codec = codec_dai->codec;
	struct _pll_div pll_div;

	if (freq_in && freq_out) {
		FUNC0(&pll_div, freq_out * 4, freq_in);

		/* Turn on PLL */
		reg = FUNC1(codec, WM8990_POWER_MANAGEMENT_2);
		reg |= WM8990_PLL_ENA;
		FUNC2(codec, WM8990_POWER_MANAGEMENT_2, reg);

		/* sysclk comes from PLL */
		reg = FUNC1(codec, WM8990_CLOCKING_2);
		FUNC2(codec, WM8990_CLOCKING_2, reg | WM8990_SYSCLK_SRC);

		/* set up N , fractional mode and pre-divisor if neccessary */
		FUNC2(codec, WM8990_PLL1, pll_div.n | WM8990_SDM |
			(pll_div.div2?WM8990_PRESCALE:0));
		FUNC2(codec, WM8990_PLL2, (u8)(pll_div.k>>8));
		FUNC2(codec, WM8990_PLL3, (u8)(pll_div.k & 0xFF));
	} else {
		/* Turn on PLL */
		reg = FUNC1(codec, WM8990_POWER_MANAGEMENT_2);
		reg &= ~WM8990_PLL_ENA;
		FUNC2(codec, WM8990_POWER_MANAGEMENT_2, reg);
	}
	return 0;
}