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
struct wm8993_priv {unsigned int fll_fref; unsigned int fll_fout; } ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int /*<<< orphan*/  dev; struct wm8993_priv* private_data; } ;
struct _fll_div {int k; int fll_outdiv; int fll_fratio; int n; int fll_clk_ref_div; } ;

/* Variables and functions */
 int EINVAL ; 
#define  WM8993_FLL_BCLK 130 
 int WM8993_FLL_CLK_REF_DIV_MASK ; 
 int WM8993_FLL_CLK_REF_DIV_SHIFT ; 
 int WM8993_FLL_CLK_SRC_MASK ; 
 int /*<<< orphan*/  WM8993_FLL_CONTROL_1 ; 
 int /*<<< orphan*/  WM8993_FLL_CONTROL_2 ; 
 int /*<<< orphan*/  WM8993_FLL_CONTROL_3 ; 
 int /*<<< orphan*/  WM8993_FLL_CONTROL_4 ; 
 int /*<<< orphan*/  WM8993_FLL_CONTROL_5 ; 
 int WM8993_FLL_ENA ; 
 int WM8993_FLL_FRAC_MASK ; 
 int WM8993_FLL_FRATIO_SHIFT ; 
#define  WM8993_FLL_LRCLK 129 
#define  WM8993_FLL_MCLK 128 
 int WM8993_FLL_N_MASK ; 
 int WM8993_FLL_N_SHIFT ; 
 int WM8993_FLL_OUTDIV_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct _fll_div*,unsigned int,unsigned int) ; 
 int FUNC3 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_dai *dai, int fll_id,
			  unsigned int Fref, unsigned int Fout)
{
	struct snd_soc_codec *codec = dai->codec;
	struct wm8993_priv *wm8993 = codec->private_data;
	u16 reg1, reg4, reg5;
	struct _fll_div fll_div;
	int ret;

	/* Any change? */
	if (Fref == wm8993->fll_fref && Fout == wm8993->fll_fout)
		return 0;

	/* Disable the FLL */
	if (Fout == 0) {
		FUNC0(codec->dev, "FLL disabled\n");
		wm8993->fll_fref = 0;
		wm8993->fll_fout = 0;

		reg1 = FUNC3(codec, WM8993_FLL_CONTROL_1);
		reg1 &= ~WM8993_FLL_ENA;
		FUNC4(codec, WM8993_FLL_CONTROL_1, reg1);

		return 0;
	}

	ret = FUNC2(&fll_div, Fref, Fout);
	if (ret != 0)
		return ret;

	reg5 = FUNC3(codec, WM8993_FLL_CONTROL_5);
	reg5 &= ~WM8993_FLL_CLK_SRC_MASK;

	switch (fll_id) {
	case WM8993_FLL_MCLK:
		break;

	case WM8993_FLL_LRCLK:
		reg5 |= 1;
		break;

	case WM8993_FLL_BCLK:
		reg5 |= 2;
		break;

	default:
		FUNC1(codec->dev, "Unknown FLL ID %d\n", fll_id);
		return -EINVAL;
	}

	/* Any FLL configuration change requires that the FLL be
	 * disabled first. */
	reg1 = FUNC3(codec, WM8993_FLL_CONTROL_1);
	reg1 &= ~WM8993_FLL_ENA;
	FUNC4(codec, WM8993_FLL_CONTROL_1, reg1);

	/* Apply the configuration */
	if (fll_div.k)
		reg1 |= WM8993_FLL_FRAC_MASK;
	else
		reg1 &= ~WM8993_FLL_FRAC_MASK;
	FUNC4(codec, WM8993_FLL_CONTROL_1, reg1);

	FUNC4(codec, WM8993_FLL_CONTROL_2,
		     (fll_div.fll_outdiv << WM8993_FLL_OUTDIV_SHIFT) |
		     (fll_div.fll_fratio << WM8993_FLL_FRATIO_SHIFT));
	FUNC4(codec, WM8993_FLL_CONTROL_3, fll_div.k);

	reg4 = FUNC3(codec, WM8993_FLL_CONTROL_4);
	reg4 &= ~WM8993_FLL_N_MASK;
	reg4 |= fll_div.n << WM8993_FLL_N_SHIFT;
	FUNC4(codec, WM8993_FLL_CONTROL_4, reg4);

	reg5 &= ~WM8993_FLL_CLK_REF_DIV_MASK;
	reg5 |= fll_div.fll_clk_ref_div << WM8993_FLL_CLK_REF_DIV_SHIFT;
	FUNC4(codec, WM8993_FLL_CONTROL_5, reg5);

	/* Enable the FLL */
	FUNC4(codec, WM8993_FLL_CONTROL_1, reg1 | WM8993_FLL_ENA);

	FUNC0(codec->dev, "FLL enabled at %dHz->%dHz\n", Fref, Fout);

	wm8993->fll_fref = Fref;
	wm8993->fll_fout = Fout;

	return 0;
}