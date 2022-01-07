
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ds1wm_driver_data {int clock_rate; } ;
struct ds1wm_data {TYPE_2__* pdev; TYPE_1__* cell; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int (* enable ) (TYPE_2__*) ;struct ds1wm_driver_data* driver_data; } ;


 int DS1WM_CLKDIV ;
 int dev_err (int *,char*,int ) ;
 int ds1wm_find_divisor (int ) ;
 int ds1wm_reset (struct ds1wm_data*) ;
 int ds1wm_write_register (struct ds1wm_data*,int ,int) ;
 int msleep (int) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void ds1wm_up(struct ds1wm_data *ds1wm_data)
{
 int divisor;
 struct ds1wm_driver_data *plat = ds1wm_data->cell->driver_data;

 if (ds1wm_data->cell->enable)
  ds1wm_data->cell->enable(ds1wm_data->pdev);

 divisor = ds1wm_find_divisor(plat->clock_rate);
 if (divisor == 0) {
  dev_err(&ds1wm_data->pdev->dev,
   "no suitable divisor for %dHz clock\n",
   plat->clock_rate);
  return;
 }
 ds1wm_write_register(ds1wm_data, DS1WM_CLKDIV, divisor);


 msleep(1);

 ds1wm_reset(ds1wm_data);
}
