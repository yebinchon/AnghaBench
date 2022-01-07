
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wimax_dev {int rf_hw; int rf_sw; int mutex; int rfkill; } ;
struct device {int dummy; } ;
typedef enum wimax_st { ____Placeholder_wimax_st } wimax_st ;
typedef enum wimax_rf_state { ____Placeholder_wimax_rf_state } wimax_rf_state ;


 int BUG_ON (int) ;
 int WIMAX_RF_OFF ;
 int WIMAX_RF_ON ;
 int WIMAX_RF_QUERY ;
 int WIMAX_ST_RADIO_OFF ;
 int WIMAX_ST_READY ;
 int __wimax_state_change (struct wimax_dev*,int) ;
 int d_fnend (int,struct device*,char*,struct wimax_dev*,int,int) ;
 int d_fnstart (int,struct device*,char*,struct wimax_dev*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rfkill_set_hw_state (int ,int) ;
 int wimax_dev_is_ready (struct wimax_dev*) ;
 struct device* wimax_dev_to_dev (struct wimax_dev*) ;

void wimax_report_rfkill_hw(struct wimax_dev *wimax_dev,
       enum wimax_rf_state state)
{
 int result;
 struct device *dev = wimax_dev_to_dev(wimax_dev);
 enum wimax_st wimax_state;

 d_fnstart(3, dev, "(wimax_dev %p state %u)\n", wimax_dev, state);
 BUG_ON(state == WIMAX_RF_QUERY);
 BUG_ON(state != WIMAX_RF_ON && state != WIMAX_RF_OFF);

 mutex_lock(&wimax_dev->mutex);
 result = wimax_dev_is_ready(wimax_dev);
 if (result < 0)
  goto error_not_ready;

 if (state != wimax_dev->rf_hw) {
  wimax_dev->rf_hw = state;
  if (wimax_dev->rf_hw == WIMAX_RF_ON
      && wimax_dev->rf_sw == WIMAX_RF_ON)
   wimax_state = WIMAX_ST_READY;
  else
   wimax_state = WIMAX_ST_RADIO_OFF;

  result = rfkill_set_hw_state(wimax_dev->rfkill,
          state == WIMAX_RF_OFF);

  __wimax_state_change(wimax_dev, wimax_state);
 }
error_not_ready:
 mutex_unlock(&wimax_dev->mutex);
 d_fnend(3, dev, "(wimax_dev %p state %u) = void [%d]\n",
  wimax_dev, state, result);
}
