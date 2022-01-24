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
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned long FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct au1xpsc_audio_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct au1xpsc_audio_data*) ; 
 unsigned long PSC_I2SSTAT_RB ; 
 unsigned long PSC_I2SSTAT_TB ; 
 int FUNC6 (struct au1xpsc_audio_data*) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct au1xpsc_audio_data *pscdata, int stype)
{
	unsigned long tmo, stat;
	int ret;

	ret = 0;

	/* if both TX and RX are idle, configure the PSC  */
	stat = FUNC7(FUNC5(pscdata));
	if (!(stat & (PSC_I2SSTAT_TB | PSC_I2SSTAT_RB))) {
		ret = FUNC6(pscdata);
		if (ret)
			goto out;
	}

	FUNC9(FUNC0(stype), FUNC4(pscdata));
	FUNC8();
	FUNC9(FUNC1(stype), FUNC4(pscdata));
	FUNC8();

	/* wait for start confirmation */
	tmo = 1000000;
	while (!(FUNC7(FUNC5(pscdata)) & FUNC3(stype)) && tmo)
		tmo--;

	if (!tmo) {
		FUNC9(FUNC2(stype), FUNC4(pscdata));
		FUNC8();
		ret = -ETIMEDOUT;
	}
out:
	return ret;
}