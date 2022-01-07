
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wimax_dev {int state; int (* op_reset ) (struct wimax_dev*) ;int net_dev; int mutex_reset; int mutex; } ;
struct device {int dummy; } ;
typedef enum wimax_st { ____Placeholder_wimax_st } wimax_st ;


 int EINVAL ;
 int WIMAX_ST_DOWN ;
 int d_fnend (int,struct device*,char*,struct wimax_dev*,int) ;
 int d_fnstart (int,struct device*,char*,struct wimax_dev*) ;
 int dev_hold (int ) ;
 int dev_put (int ) ;
 int might_sleep () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct wimax_dev*) ;
 struct device* wimax_dev_to_dev (struct wimax_dev*) ;

int wimax_reset(struct wimax_dev *wimax_dev)
{
 int result = -EINVAL;
 struct device *dev = wimax_dev_to_dev(wimax_dev);
 enum wimax_st state;

 might_sleep();
 d_fnstart(3, dev, "(wimax_dev %p)\n", wimax_dev);
 mutex_lock(&wimax_dev->mutex);
 dev_hold(wimax_dev->net_dev);
 state = wimax_dev->state;
 mutex_unlock(&wimax_dev->mutex);

 if (state >= WIMAX_ST_DOWN) {
  mutex_lock(&wimax_dev->mutex_reset);
  result = wimax_dev->op_reset(wimax_dev);
  mutex_unlock(&wimax_dev->mutex_reset);
 }
 dev_put(wimax_dev->net_dev);

 d_fnend(3, dev, "(wimax_dev %p) = %d\n", wimax_dev, result);
 return result;
}
