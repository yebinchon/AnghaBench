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
struct wimax_dev {int rf_hw; int rf_sw; int /*<<< orphan*/  mutex; int /*<<< orphan*/  rfkill; } ;
struct device {int dummy; } ;
typedef  enum wimax_st { ____Placeholder_wimax_st } wimax_st ;
typedef  enum wimax_rf_state { ____Placeholder_wimax_rf_state } wimax_rf_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int WIMAX_RF_OFF ; 
 int WIMAX_RF_ON ; 
 int WIMAX_RF_QUERY ; 
 int WIMAX_ST_RADIO_OFF ; 
 int WIMAX_ST_READY ; 
 int /*<<< orphan*/  FUNC1 (struct wimax_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,char*,struct wimax_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,struct device*,char*,struct wimax_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct wimax_dev*) ; 
 struct device* FUNC8 (struct wimax_dev*) ; 

void FUNC9(struct wimax_dev *wimax_dev,
			    enum wimax_rf_state state)
{
	int result;
	struct device *dev = FUNC8(wimax_dev);
	enum wimax_st wimax_state;

	FUNC3(3, dev, "(wimax_dev %p state %u)\n", wimax_dev, state);
	FUNC0(state == WIMAX_RF_QUERY);
	FUNC0(state != WIMAX_RF_ON && state != WIMAX_RF_OFF);

	FUNC4(&wimax_dev->mutex);
	result = FUNC7(wimax_dev);
	if (result < 0)
		goto error_not_ready;

	if (state != wimax_dev->rf_hw) {
		wimax_dev->rf_hw = state;
		if (wimax_dev->rf_hw == WIMAX_RF_ON
		    && wimax_dev->rf_sw == WIMAX_RF_ON)
			wimax_state = WIMAX_ST_READY;
		else
			wimax_state = WIMAX_ST_RADIO_OFF;

		result = FUNC6(wimax_dev->rfkill,
					     state == WIMAX_RF_OFF);

		FUNC1(wimax_dev, wimax_state);
	}
error_not_ready:
	FUNC5(&wimax_dev->mutex);
	FUNC2(3, dev, "(wimax_dev %p state %u) = void [%d]\n",
		wimax_dev, state, result);
}