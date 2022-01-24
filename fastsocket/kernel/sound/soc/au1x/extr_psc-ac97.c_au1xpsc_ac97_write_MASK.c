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
struct snd_ac97 {int dummy; } ;
struct au1xpsc_audio_data {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct au1xpsc_audio_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct au1xpsc_audio_data*) ; 
 unsigned int AC97_RW_RETRIES ; 
 unsigned short FUNC2 (unsigned short) ; 
 unsigned short PSC_AC97EVNT_CD ; 
 struct au1xpsc_audio_data* au1xpsc_ac97_workdata ; 
 unsigned short FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct snd_ac97 *ac97, unsigned short reg,
				unsigned short val)
{
	/* FIXME */
	struct au1xpsc_audio_data *pscdata = au1xpsc_ac97_workdata;
	unsigned int tmo, retry;

	FUNC5(PSC_AC97EVNT_CD, FUNC1(pscdata));
	FUNC4();

	retry = AC97_RW_RETRIES;
	do {
		FUNC6(&pscdata->lock);

		FUNC5(FUNC2(reg) | (val & 0xffff),
			  FUNC0(pscdata));
		FUNC4();

		tmo = 2000;
		while ((!(FUNC3(FUNC1(pscdata)) & PSC_AC97EVNT_CD))
		       && --tmo)
			FUNC8(2);

		FUNC5(PSC_AC97EVNT_CD, FUNC1(pscdata));
		FUNC4();

		FUNC7(&pscdata->lock);
	} while (--retry && !tmo);
}