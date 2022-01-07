
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int dummy; } ;


 int USBAT_DEV_FLASH ;
 int init_usbat (struct us_data*,int ) ;

__attribute__((used)) static int init_usbat_flash(struct us_data *us)
{
 return init_usbat(us, USBAT_DEV_FLASH);
}
