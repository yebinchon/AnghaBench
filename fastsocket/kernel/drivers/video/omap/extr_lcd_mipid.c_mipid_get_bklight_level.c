
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mipid_platform_data {unsigned int (* get_bklight_level ) (struct mipid_platform_data*) ;} ;
struct mipid_device {TYPE_2__* spi; } ;
struct lcd_panel {int dummy; } ;
struct TYPE_3__ {struct mipid_platform_data* platform_data; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 unsigned int ENODEV ;
 unsigned int stub1 (struct mipid_platform_data*) ;
 struct mipid_device* to_mipid_device (struct lcd_panel*) ;

__attribute__((used)) static unsigned int mipid_get_bklight_level(struct lcd_panel *panel)
{
 struct mipid_device *md = to_mipid_device(panel);
 struct mipid_platform_data *pd = md->spi->dev.platform_data;

 if (pd->get_bklight_level == ((void*)0))
  return -ENODEV;
 return pd->get_bklight_level(pd);
}
