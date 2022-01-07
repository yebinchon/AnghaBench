
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mipid_device {TYPE_1__* spi; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*) ;
 int set_sleep_mode (struct mipid_device*,int) ;

__attribute__((used)) static void ls041y3_esd_recover(struct mipid_device *md)
{
 dev_err(&md->spi->dev, "performing LCD ESD recovery\n");
 set_sleep_mode(md, 1);
 set_sleep_mode(md, 0);
}
