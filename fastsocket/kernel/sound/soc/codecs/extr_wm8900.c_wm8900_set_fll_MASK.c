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
struct wm8900_priv {unsigned int fll_in; unsigned int fll_out; } ;
struct snd_soc_codec {struct wm8900_priv* private_data; } ;
struct _fll_div {unsigned int fll_ratio; int n; int fllclk_div; int k; scalar_t__ fll_slow_lock_ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM8900_REG_CLOCKING1 ; 
 unsigned int WM8900_REG_CLOCKING1_MCLK_SRC ; 
 int /*<<< orphan*/  WM8900_REG_FLLCTL1 ; 
 unsigned int WM8900_REG_FLLCTL1_OSC_ENA ; 
 int /*<<< orphan*/  WM8900_REG_FLLCTL2 ; 
 int /*<<< orphan*/  WM8900_REG_FLLCTL3 ; 
 int /*<<< orphan*/  WM8900_REG_FLLCTL4 ; 
 int /*<<< orphan*/  WM8900_REG_FLLCTL5 ; 
 int /*<<< orphan*/  WM8900_REG_FLLCTL6 ; 
 unsigned int WM8900_REG_FLLCTL6_FLL_SLOW_LOCK_REF ; 
 int /*<<< orphan*/  WM8900_REG_POWER1 ; 
 unsigned int WM8900_REG_POWER1_FLL_ENA ; 
 scalar_t__ FUNC0 (struct _fll_div*,unsigned int,unsigned int) ; 
 unsigned int FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_codec*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_codec *codec,
	int fll_id, unsigned int freq_in, unsigned int freq_out)
{
	struct wm8900_priv *wm8900 = codec->private_data;
	struct _fll_div fll_div;
	unsigned int reg;

	if (wm8900->fll_in == freq_in && wm8900->fll_out == freq_out)
		return 0;

	/* The digital side should be disabled during any change. */
	reg = FUNC1(codec, WM8900_REG_POWER1);
	FUNC2(codec, WM8900_REG_POWER1,
		     reg & (~WM8900_REG_POWER1_FLL_ENA));

	/* Disable the FLL? */
	if (!freq_in || !freq_out) {
		reg = FUNC1(codec, WM8900_REG_CLOCKING1);
		FUNC2(codec, WM8900_REG_CLOCKING1,
			     reg & (~WM8900_REG_CLOCKING1_MCLK_SRC));

		reg = FUNC1(codec, WM8900_REG_FLLCTL1);
		FUNC2(codec, WM8900_REG_FLLCTL1,
			     reg & (~WM8900_REG_FLLCTL1_OSC_ENA));

		wm8900->fll_in = freq_in;
		wm8900->fll_out = freq_out;

		return 0;
	}

	if (FUNC0(&fll_div, freq_in, freq_out) != 0)
		goto reenable;

	wm8900->fll_in = freq_in;
	wm8900->fll_out = freq_out;

	/* The osclilator *MUST* be enabled before we enable the
	 * digital circuit. */
	FUNC2(codec, WM8900_REG_FLLCTL1,
		     fll_div.fll_ratio | WM8900_REG_FLLCTL1_OSC_ENA);

	FUNC2(codec, WM8900_REG_FLLCTL4, fll_div.n >> 5);
	FUNC2(codec, WM8900_REG_FLLCTL5,
		     (fll_div.fllclk_div << 6) | (fll_div.n & 0x1f));

	if (fll_div.k) {
		FUNC2(codec, WM8900_REG_FLLCTL2,
			     (fll_div.k >> 8) | 0x100);
		FUNC2(codec, WM8900_REG_FLLCTL3, fll_div.k & 0xff);
	} else
		FUNC2(codec, WM8900_REG_FLLCTL2, 0);

	if (fll_div.fll_slow_lock_ref)
		FUNC2(codec, WM8900_REG_FLLCTL6,
			     WM8900_REG_FLLCTL6_FLL_SLOW_LOCK_REF);
	else
		FUNC2(codec, WM8900_REG_FLLCTL6, 0);

	reg = FUNC1(codec, WM8900_REG_POWER1);
	FUNC2(codec, WM8900_REG_POWER1,
		     reg | WM8900_REG_POWER1_FLL_ENA);

reenable:
	reg = FUNC1(codec, WM8900_REG_CLOCKING1);
	FUNC2(codec, WM8900_REG_CLOCKING1,
		     reg | WM8900_REG_CLOCKING1_MCLK_SRC);

	return 0;
}