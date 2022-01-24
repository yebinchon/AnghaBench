#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int u8_t ;
typedef  int u16_t ;
struct TYPE_3__ {int /*<<< orphan*/  connectByReasso; } ;
struct TYPE_4__ {scalar_t__ wlanMode; TYPE_1__ sta; int /*<<< orphan*/  macAddr; int /*<<< orphan*/  ExtOffset; int /*<<< orphan*/  BandWidth40; int /*<<< orphan*/  frequency; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  ZM_LV_1 ; 
 scalar_t__ ZM_MODE_IBSS ; 
 scalar_t__ ZM_MODE_INFRASTRUCTURE ; 
 TYPE_2__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

u16_t FUNC14(zdev_t *dev, u8_t doReconn)
{
	u16_t ret;
	FUNC12(dev);
	FUNC10();

	/* Redownload firmware, Reinit MAC,PHY,RF */
	FUNC2(dev, wd->frequency);

	/* Set channel according to AP's configuration */
	FUNC0(dev, wd->frequency, wd->BandWidth40,
		wd->ExtOffset, NULL, 1);

	FUNC3(dev, wd->macAddr, 0);

	/* Start Rx */
	FUNC5(dev);

	FUNC1(dev);

	if (wd->wlanMode != ZM_MODE_INFRASTRUCTURE &&
			wd->wlanMode != ZM_MODE_IBSS)
		return 1;

	FUNC9(ZM_LV_1, "Resume Wlan");
	if ((FUNC6(dev)) || (FUNC7(dev))) {
		if (doReconn == 1) {
			FUNC9(ZM_LV_1, "Re-connect...");
			FUNC11(dev);
			wd->sta.connectByReasso = FALSE;
			FUNC13(dev);

			FUNC8(dev);
		} else if (doReconn == 0)
			FUNC4(dev);
	}

	ret = 0;

	return ret;
}