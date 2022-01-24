#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_3__ {unsigned long data; scalar_t__ expires; int /*<<< orphan*/  function; } ;
struct hw_data {int SurpriseRemove; TYPE_1__ LEDTimer; int /*<<< orphan*/  FragmentThreshold; int /*<<< orphan*/  MaxReceiveLifeTime; } ;
struct wbsoft_priv {struct hw_data sHwData; } ;
struct ieee80211_hw {struct wbsoft_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_FRAGMENT_THRESHOLD ; 
 int /*<<< orphan*/  DEFAULT_MSDU_LIFE_TIME ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct hw_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct hw_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct hw_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct hw_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct wbsoft_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct hw_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct hw_data*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  hal_led_control ; 
 int FUNC9 (struct hw_data*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct ieee80211_hw *hw)
{
	struct wbsoft_priv *priv = hw->priv;
	struct hw_data *pHwData = &priv->sHwData;
	u16 SoftwareSet;

	pHwData->MaxReceiveLifeTime = DEFAULT_MSDU_LIFE_TIME;
	pHwData->FragmentThreshold = DEFAULT_FRAGMENT_THRESHOLD;

	if (!FUNC1(pHwData))
		goto error_reg_destroy;

	if (!FUNC7(pHwData))
		goto error_tx_destroy;

	if (!FUNC3(pHwData))
		goto error_rx_destroy;

	FUNC10(&pHwData->LEDTimer);
	pHwData->LEDTimer.function = hal_led_control;
	pHwData->LEDTimer.data = (unsigned long)priv;
	pHwData->LEDTimer.expires = jiffies + FUNC11(1000);
	FUNC8(&pHwData->LEDTimer);

	SoftwareSet = FUNC9(pHwData);

#ifdef Vendor2
	// Try to make sure the EEPROM contain
	SoftwareSet >>= 8;
	if (SoftwareSet != 0x82)
		return false;
#endif

	FUNC4(hw);
	FUNC5(priv);

	return 0;

error_rx_destroy:
	FUNC2(pHwData);
error_tx_destroy:
	FUNC6(pHwData);
error_reg_destroy:
	FUNC0(pHwData);

	pHwData->SurpriseRemove = 1;
	return -EINVAL;
}