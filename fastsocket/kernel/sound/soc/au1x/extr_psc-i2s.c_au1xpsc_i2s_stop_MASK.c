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
struct au1xpsc_audio_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct au1xpsc_audio_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct au1xpsc_audio_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct au1xpsc_audio_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct au1xpsc_audio_data*) ; 
 int /*<<< orphan*/  PSC_CTRL_SUSPEND ; 
 unsigned long PSC_I2SSTAT_RB ; 
 unsigned long PSC_I2SSTAT_TB ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct au1xpsc_audio_data *pscdata, int stype)
{
	unsigned long tmo, stat;

	FUNC8(FUNC0(stype), FUNC3(pscdata));
	FUNC7();

	/* wait for stop confirmation */
	tmo = 1000000;
	while ((FUNC6(FUNC4(pscdata)) & FUNC1(stype)) && tmo)
		tmo--;

	/* if both TX and RX are idle, disable PSC */
	stat = FUNC6(FUNC4(pscdata));
	if (!(stat & (PSC_I2SSTAT_TB | PSC_I2SSTAT_RB))) {
		FUNC8(0, FUNC2(pscdata));
		FUNC7();
		FUNC8(PSC_CTRL_SUSPEND, FUNC5(pscdata));
		FUNC7();
	}
	return 0;
}