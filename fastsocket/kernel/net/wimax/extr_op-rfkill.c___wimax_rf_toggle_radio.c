
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wimax_dev {int rf_sw; int (* op_rfkill_sw_toggle ) (struct wimax_dev*,int) ;} ;
struct device {int dummy; } ;
typedef enum wimax_st { ____Placeholder_wimax_st } wimax_st ;
typedef enum wimax_rf_state { ____Placeholder_wimax_rf_state } wimax_rf_state ;


 int ENXIO ;
 int WIMAX_RF_OFF ;
 int WIMAX_RF_ON ;
 int WIMAX_ST_RADIO_OFF ;
 int WIMAX_ST_READY ;
 int __wimax_state_change (struct wimax_dev*,int) ;
 int d_fnend (int,struct device*,char*,struct wimax_dev*,int,int) ;
 int d_fnstart (int,struct device*,char*,struct wimax_dev*,int) ;
 int might_sleep () ;
 int stub1 (struct wimax_dev*,int) ;
 struct device* wimax_dev_to_dev (struct wimax_dev*) ;

__attribute__((used)) static
int __wimax_rf_toggle_radio(struct wimax_dev *wimax_dev,
       enum wimax_rf_state state)
{
 int result = 0;
 struct device *dev = wimax_dev_to_dev(wimax_dev);
 enum wimax_st wimax_state;

 might_sleep();
 d_fnstart(3, dev, "(wimax_dev %p state %u)\n", wimax_dev, state);
 if (wimax_dev->rf_sw == state)
  goto out_no_change;
 if (wimax_dev->op_rfkill_sw_toggle != ((void*)0))
  result = wimax_dev->op_rfkill_sw_toggle(wimax_dev, state);
 else if (state == WIMAX_RF_OFF)
  result = -ENXIO;
 else
  result = 0;
 if (result >= 0) {
  result = 0;
  wimax_dev->rf_sw = state;
  wimax_state = state == WIMAX_RF_ON ?
   WIMAX_ST_READY : WIMAX_ST_RADIO_OFF;
  __wimax_state_change(wimax_dev, wimax_state);
 }
out_no_change:
 d_fnend(3, dev, "(wimax_dev %p state %u) = %d\n",
  wimax_dev, state, result);
 return result;
}
