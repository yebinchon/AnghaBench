
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wimax_dev {int rf_sw; int rf_hw; int mutex; int rfkill; } ;
struct device {int dummy; } ;
typedef enum wimax_rf_state { ____Placeholder_wimax_rf_state } wimax_rf_state ;


 int EINVAL ;



 int __wimax_rf_toggle_radio (struct wimax_dev*,int) ;
 int d_fnend (int,struct device*,char*,struct wimax_dev*,int,int) ;
 int d_fnstart (int,struct device*,char*,struct wimax_dev*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rfkill_set_sw_state (int ,int) ;
 int wimax_dev_is_ready (struct wimax_dev*) ;
 struct device* wimax_dev_to_dev (struct wimax_dev*) ;

int wimax_rfkill(struct wimax_dev *wimax_dev, enum wimax_rf_state state)
{
 int result;
 struct device *dev = wimax_dev_to_dev(wimax_dev);

 d_fnstart(3, dev, "(wimax_dev %p state %u)\n", wimax_dev, state);
 mutex_lock(&wimax_dev->mutex);
 result = wimax_dev_is_ready(wimax_dev);
 if (result < 0)
  goto error_not_ready;
 switch (state) {
 case 129:
 case 130:
  result = __wimax_rf_toggle_radio(wimax_dev, state);
  if (result < 0)
   goto error;
  rfkill_set_sw_state(wimax_dev->rfkill, state == 130);
  break;
 case 128:
  break;
 default:
  result = -EINVAL;
  goto error;
 }
 result = wimax_dev->rf_sw << 1 | wimax_dev->rf_hw;
error:
error_not_ready:
 mutex_unlock(&wimax_dev->mutex);
 d_fnend(3, dev, "(wimax_dev %p state %u) = %d\n",
  wimax_dev, state, result);
 return result;
}
