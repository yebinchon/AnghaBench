
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wimax_dev {struct rfkill* rfkill; int rf_sw; int * op_rfkill_sw_toggle; int name; } ;
struct rfkill {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int RFKILL_TYPE_WIMAX ;
 int WIMAX_RF_ON ;
 int d_fnend (int,struct device*,char*,struct wimax_dev*,...) ;
 int d_fnstart (int,struct device*,char*,struct wimax_dev*) ;
 int d_printf (int,struct device*,char*,struct rfkill*) ;
 struct rfkill* rfkill_alloc (int ,struct device*,int ,int *,struct wimax_dev*) ;
 int rfkill_destroy (struct rfkill*) ;
 int rfkill_register (struct rfkill*) ;
 struct device* wimax_dev_to_dev (struct wimax_dev*) ;
 int wimax_rfkill_ops ;

int wimax_rfkill_add(struct wimax_dev *wimax_dev)
{
 int result;
 struct rfkill *rfkill;
 struct device *dev = wimax_dev_to_dev(wimax_dev);

 d_fnstart(3, dev, "(wimax_dev %p)\n", wimax_dev);

 result = -ENOMEM;
 rfkill = rfkill_alloc(wimax_dev->name, dev, RFKILL_TYPE_WIMAX,
         &wimax_rfkill_ops, wimax_dev);
 if (rfkill == ((void*)0))
  goto error_rfkill_allocate;

 d_printf(1, dev, "rfkill %p\n", rfkill);

 wimax_dev->rfkill = rfkill;

 result = rfkill_register(wimax_dev->rfkill);
 if (result < 0)
  goto error_rfkill_register;


 if (wimax_dev->op_rfkill_sw_toggle == ((void*)0))
  wimax_dev->rf_sw = WIMAX_RF_ON;

 d_fnend(3, dev, "(wimax_dev %p) = 0\n", wimax_dev);
 return 0;

error_rfkill_register:
 rfkill_destroy(wimax_dev->rfkill);
error_rfkill_allocate:
 d_fnend(3, dev, "(wimax_dev %p) = %d\n", wimax_dev, result);
 return result;
}
