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
typedef  int u16 ;
struct wm9713_priv {unsigned int pll_in; } ;
struct snd_soc_codec {struct wm9713_priv* private_data; } ;
struct _pll_div {int k; int n; int lf; int divsel; int divctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_EXTENDED_MID ; 
 int /*<<< orphan*/  AC97_HANDSET_RATE ; 
 int /*<<< orphan*/  AC97_LINE1_LEVEL ; 
 int FUNC0 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct _pll_div*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_codec *codec,
	int pll_id, unsigned int freq_in, unsigned int freq_out)
{
	struct wm9713_priv *wm9713 = codec->private_data;
	u16 reg, reg2;
	struct _pll_div pll_div;

	/* turn PLL off ? */
	if (freq_in == 0) {
		/* disable PLL power and select ext source */
		reg = FUNC0(codec, AC97_HANDSET_RATE);
		FUNC1(codec, AC97_HANDSET_RATE, reg | 0x0080);
		reg = FUNC0(codec, AC97_EXTENDED_MID);
		FUNC1(codec, AC97_EXTENDED_MID, reg | 0x0200);
		wm9713->pll_in = 0;
		return 0;
	}

	FUNC3(&pll_div, freq_in);

	if (pll_div.k == 0) {
		reg = (pll_div.n << 12) | (pll_div.lf << 11) |
			(pll_div.divsel << 9) | (pll_div.divctl << 8);
		FUNC1(codec, AC97_LINE1_LEVEL, reg);
	} else {
		/* write the fractional k to the reg 0x46 pages */
		reg2 = (pll_div.n << 12) | (pll_div.lf << 11) | (1 << 10) |
			(pll_div.divsel << 9) | (pll_div.divctl << 8);

		/* K [21:20] */
		reg = reg2 | (0x5 << 4) | (pll_div.k >> 20);
		FUNC1(codec, AC97_LINE1_LEVEL, reg);

		/* K [19:16] */
		reg = reg2 | (0x4 << 4) | ((pll_div.k >> 16) & 0xf);
		FUNC1(codec, AC97_LINE1_LEVEL, reg);

		/* K [15:12] */
		reg = reg2 | (0x3 << 4) | ((pll_div.k >> 12) & 0xf);
		FUNC1(codec, AC97_LINE1_LEVEL, reg);

		/* K [11:8] */
		reg = reg2 | (0x2 << 4) | ((pll_div.k >> 8) & 0xf);
		FUNC1(codec, AC97_LINE1_LEVEL, reg);

		/* K [7:4] */
		reg = reg2 | (0x1 << 4) | ((pll_div.k >> 4) & 0xf);
		FUNC1(codec, AC97_LINE1_LEVEL, reg);

		reg = reg2 | (0x0 << 4) | (pll_div.k & 0xf); /* K [3:0] */
		FUNC1(codec, AC97_LINE1_LEVEL, reg);
	}

	/* turn PLL on and select as source */
	reg = FUNC0(codec, AC97_EXTENDED_MID);
	FUNC1(codec, AC97_EXTENDED_MID, reg & 0xfdff);
	reg = FUNC0(codec, AC97_HANDSET_RATE);
	FUNC1(codec, AC97_HANDSET_RATE, reg & 0xff7f);
	wm9713->pll_in = freq_in;

	/* wait 10ms AC97 link frames for the link to stabilise */
	FUNC4(FUNC2(10));
	return 0;
}