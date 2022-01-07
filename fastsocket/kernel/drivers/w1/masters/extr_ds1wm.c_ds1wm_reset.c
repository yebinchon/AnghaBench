
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ds1wm_data {TYPE_1__* pdev; int slave_present; scalar_t__ active_high; int * reset_complete; } ;
struct TYPE_2__ {int dev; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int DS1WM_CMD ;
 int DS1WM_CMD_1W_RESET ;
 int DS1WM_INTEN_EPD ;
 int DS1WM_INTEN_ERBF ;
 int DS1WM_INTEN_ETMT ;
 int DS1WM_INTEN_IAS ;
 int DS1WM_INT_EN ;
 int DS1WM_TIMEOUT ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int ds1wm_write_register (struct ds1wm_data*,int ,int) ;
 int msleep (int) ;
 int reset_done ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int ds1wm_reset(struct ds1wm_data *ds1wm_data)
{
 unsigned long timeleft;
 DECLARE_COMPLETION_ONSTACK(reset_done);

 ds1wm_data->reset_complete = &reset_done;

 ds1wm_write_register(ds1wm_data, DS1WM_INT_EN, DS1WM_INTEN_EPD |
  (ds1wm_data->active_high ? DS1WM_INTEN_IAS : 0));

 ds1wm_write_register(ds1wm_data, DS1WM_CMD, DS1WM_CMD_1W_RESET);

 timeleft = wait_for_completion_timeout(&reset_done, DS1WM_TIMEOUT);
 ds1wm_data->reset_complete = ((void*)0);
 if (!timeleft) {
  dev_err(&ds1wm_data->pdev->dev, "reset failed\n");
  return 1;
 }
 msleep(1);

 ds1wm_write_register(ds1wm_data, DS1WM_INT_EN,
  DS1WM_INTEN_ERBF | DS1WM_INTEN_ETMT | DS1WM_INTEN_EPD |
  (ds1wm_data->active_high ? DS1WM_INTEN_IAS : 0));

 if (!ds1wm_data->slave_present) {
  dev_dbg(&ds1wm_data->pdev->dev, "reset: no devices found\n");
  return 1;
 }

 return 0;
}
