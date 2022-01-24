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
struct au1xpsc_audio_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct au1xpsc_audio_data*) ; 
 int /*<<< orphan*/  PSC_AC97RST_SNC ; 
 struct au1xpsc_audio_data* au1xpsc_ac97_workdata ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct snd_ac97 *ac97)
{
	/* FIXME */
	struct au1xpsc_audio_data *pscdata = au1xpsc_ac97_workdata;

	FUNC2(PSC_AC97RST_SNC, FUNC0(pscdata));
	FUNC1();
	FUNC3(10);
	FUNC2(0, FUNC0(pscdata));
	FUNC1();
}