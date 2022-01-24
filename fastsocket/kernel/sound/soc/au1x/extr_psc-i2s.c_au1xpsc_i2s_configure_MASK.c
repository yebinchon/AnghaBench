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
struct au1xpsc_audio_data {int cfg; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct au1xpsc_audio_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct au1xpsc_audio_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct au1xpsc_audio_data*) ; 
 int PSC_CTRL_ENABLE ; 
 int PSC_CTRL_SUSPEND ; 
 int PSC_I2SCFG_DE_ENABLE ; 
 int PSC_I2SSTAT_DR ; 
 int PSC_I2SSTAT_SR ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct au1xpsc_audio_data *pscdata)
{
	unsigned long tmo;

	/* bring PSC out of sleep, and configure I2S unit */
	FUNC5(PSC_CTRL_ENABLE, FUNC2(pscdata));
	FUNC4();

	tmo = 1000000;
	while (!(FUNC3(FUNC1(pscdata)) & PSC_I2SSTAT_SR) && tmo)
		tmo--;

	if (!tmo)
		goto psc_err;

	FUNC5(0, FUNC0(pscdata));
	FUNC4();
	FUNC5(pscdata->cfg | PSC_I2SCFG_DE_ENABLE, FUNC0(pscdata));
	FUNC4();

	/* wait for I2S controller to become ready */
	tmo = 1000000;
	while (!(FUNC3(FUNC1(pscdata)) & PSC_I2SSTAT_DR) && tmo)
		tmo--;

	if (tmo)
		return 0;

psc_err:
	FUNC5(0, FUNC0(pscdata));
	FUNC5(PSC_CTRL_SUSPEND, FUNC2(pscdata));
	FUNC4();
	return -ETIMEDOUT;
}