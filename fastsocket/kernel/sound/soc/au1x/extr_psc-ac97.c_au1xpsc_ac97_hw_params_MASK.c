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
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {scalar_t__ msbits; } ;
struct au1xpsc_audio_data {scalar_t__ rate; unsigned long cfg; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct au1xpsc_audio_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct au1xpsc_audio_data*) ; 
 int EINVAL ; 
 int PCM_TX ; 
 unsigned long PSC_AC97CFG_DE_ENABLE ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 unsigned long PSC_AC97CFG_LEN_MASK ; 
 unsigned long FUNC3 (int) ; 
 unsigned long PSC_AC97CFG_RXSLOT_MASK ; 
 unsigned long FUNC4 (scalar_t__) ; 
 unsigned long FUNC5 (int) ; 
 unsigned long PSC_AC97CFG_TXSLOT_MASK ; 
 int PSC_AC97STAT_DR ; 
 unsigned long PSC_AC97STAT_RB ; 
 unsigned long PSC_AC97STAT_TB ; 
 int FUNC6 (struct snd_pcm_substream*) ; 
 struct au1xpsc_audio_data* au1xpsc_ac97_workdata ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct snd_pcm_hw_params*) ; 
 scalar_t__ FUNC13 (struct snd_pcm_hw_params*) ; 

__attribute__((used)) static int FUNC14(struct snd_pcm_substream *substream,
				  struct snd_pcm_hw_params *params,
				  struct snd_soc_dai *dai)
{
	/* FIXME */
	struct au1xpsc_audio_data *pscdata = au1xpsc_ac97_workdata;
	unsigned long r, ro, stat;
	int chans, stype = FUNC6(substream);

	chans = FUNC12(params);

	r = ro = FUNC7(FUNC0(pscdata));
	stat = FUNC7(FUNC1(pscdata));

	/* already active? */
	if (stat & (PSC_AC97STAT_TB | PSC_AC97STAT_RB)) {
		/* reject parameters not currently set up */
		if ((FUNC2(r) != params->msbits) ||
		    (pscdata->rate != FUNC13(params)))
			return -EINVAL;
	} else {

		/* set sample bitdepth: REG[24:21]=(BITS-2)/2 */
		r &= ~PSC_AC97CFG_LEN_MASK;
		r |= FUNC4(params->msbits);

		/* channels: enable slots for front L/R channel */
		if (stype == PCM_TX) {
			r &= ~PSC_AC97CFG_TXSLOT_MASK;
			r |= FUNC5(3);
			r |= FUNC5(4);
		} else {
			r &= ~PSC_AC97CFG_RXSLOT_MASK;
			r |= FUNC3(3);
			r |= FUNC3(4);
		}

		/* do we need to poke the hardware? */
		if (!(r ^ ro))
			goto out;

		/* ac97 engine is about to be disabled */
		FUNC10(&pscdata->lock);

		/* disable AC97 device controller first... */
		FUNC9(r & ~PSC_AC97CFG_DE_ENABLE, FUNC0(pscdata));
		FUNC8();

		/* ...wait for it... */
		while (FUNC7(FUNC1(pscdata)) & PSC_AC97STAT_DR)
			asm volatile ("nop");

		/* ...write config... */
		FUNC9(r, FUNC0(pscdata));
		FUNC8();

		/* ...enable the AC97 controller again... */
		FUNC9(r | PSC_AC97CFG_DE_ENABLE, FUNC0(pscdata));
		FUNC8();

		/* ...and wait for ready bit */
		while (!(FUNC7(FUNC1(pscdata)) & PSC_AC97STAT_DR))
			asm volatile ("nop");

		FUNC11(&pscdata->lock);

		pscdata->cfg = r;
		pscdata->rate = FUNC13(params);
	}

out:
	return 0;
}