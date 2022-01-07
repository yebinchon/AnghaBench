
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wimax_dev {int rfkill; } ;
struct device {int dummy; } ;


 int d_fnend (int,struct device*,char*,struct wimax_dev*) ;
 int d_fnstart (int,struct device*,char*,struct wimax_dev*) ;
 int rfkill_destroy (int ) ;
 int rfkill_unregister (int ) ;
 struct device* wimax_dev_to_dev (struct wimax_dev*) ;

void wimax_rfkill_rm(struct wimax_dev *wimax_dev)
{
 struct device *dev = wimax_dev_to_dev(wimax_dev);
 d_fnstart(3, dev, "(wimax_dev %p)\n", wimax_dev);
 rfkill_unregister(wimax_dev->rfkill);
 rfkill_destroy(wimax_dev->rfkill);
 d_fnend(3, dev, "(wimax_dev %p)\n", wimax_dev);
}
