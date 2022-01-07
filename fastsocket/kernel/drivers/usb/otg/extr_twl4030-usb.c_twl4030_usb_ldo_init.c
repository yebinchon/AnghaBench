
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl4030_usb {int * usb3v1; int * usb1v5; int * usb1v8; int dev; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (int *) ;
 int PROTECT_KEY ;
 int TWL4030_MODULE_PM_MASTER ;
 int TWL4030_MODULE_PM_RECEIVER ;
 int VUSB1V5_DEV_GRP ;
 int VUSB1V5_TYPE ;
 int VUSB1V8_DEV_GRP ;
 int VUSB1V8_TYPE ;
 int VUSB3V1_DEV_GRP ;
 int VUSB3V1_TYPE ;
 int VUSB_DEDICATED1 ;
 int VUSB_DEDICATED2 ;
 void* regulator_get (int ,char*) ;
 int regulator_put (int *) ;
 int twl4030_i2c_write_u8 (int ,int,int ) ;

__attribute__((used)) static int twl4030_usb_ldo_init(struct twl4030_usb *twl)
{

 twl4030_i2c_write_u8(TWL4030_MODULE_PM_MASTER, 0xC0, PROTECT_KEY);
 twl4030_i2c_write_u8(TWL4030_MODULE_PM_MASTER, 0x0C, PROTECT_KEY);


 twl4030_i2c_write_u8(TWL4030_MODULE_PM_RECEIVER, 0, VUSB_DEDICATED2);


 twl4030_i2c_write_u8(TWL4030_MODULE_PM_RECEIVER, 0x14, VUSB_DEDICATED1);


 twl4030_i2c_write_u8(TWL4030_MODULE_PM_RECEIVER, 0, VUSB3V1_DEV_GRP);

 twl->usb3v1 = regulator_get(twl->dev, "usb3v1");
 if (IS_ERR(twl->usb3v1))
  return -ENODEV;

 twl4030_i2c_write_u8(TWL4030_MODULE_PM_RECEIVER, 0, VUSB3V1_TYPE);


 twl4030_i2c_write_u8(TWL4030_MODULE_PM_RECEIVER, 0, VUSB1V5_DEV_GRP);

 twl->usb1v5 = regulator_get(twl->dev, "usb1v5");
 if (IS_ERR(twl->usb1v5))
  goto fail1;

 twl4030_i2c_write_u8(TWL4030_MODULE_PM_RECEIVER, 0, VUSB1V5_TYPE);


 twl4030_i2c_write_u8(TWL4030_MODULE_PM_RECEIVER, 0, VUSB1V8_DEV_GRP);

 twl->usb1v8 = regulator_get(twl->dev, "usb1v8");
 if (IS_ERR(twl->usb1v8))
  goto fail2;

 twl4030_i2c_write_u8(TWL4030_MODULE_PM_RECEIVER, 0, VUSB1V8_TYPE);


 twl4030_i2c_write_u8(TWL4030_MODULE_PM_MASTER, 0, PROTECT_KEY);

 return 0;

fail2:
 regulator_put(twl->usb1v5);
 twl->usb1v5 = ((void*)0);
fail1:
 regulator_put(twl->usb3v1);
 twl->usb3v1 = ((void*)0);
 return -ENODEV;
}
