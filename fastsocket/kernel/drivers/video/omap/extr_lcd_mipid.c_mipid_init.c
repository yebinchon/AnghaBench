
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omapfb_device {int dummy; } ;
struct mipid_device {int saved_bklight_level; scalar_t__ enabled; int mutex; int esd_work; TYPE_1__* spi; int * esd_wq; struct omapfb_device* fbdev; } ;
struct lcd_panel {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int * create_singlethread_workqueue (char*) ;
 int dev_err (int *,char*) ;
 int mipid_esd_start_check (struct mipid_device*) ;
 int mipid_esd_work ;
 int mipid_get_bklight_level (struct lcd_panel*) ;
 int mutex_init (int *) ;
 scalar_t__ panel_enabled (struct mipid_device*) ;
 struct mipid_device* to_mipid_device (struct lcd_panel*) ;

__attribute__((used)) static int mipid_init(struct lcd_panel *panel,
       struct omapfb_device *fbdev)
{
 struct mipid_device *md = to_mipid_device(panel);

 md->fbdev = fbdev;
 md->esd_wq = create_singlethread_workqueue("mipid_esd");
 if (md->esd_wq == ((void*)0)) {
  dev_err(&md->spi->dev, "can't create ESD workqueue\n");
  return -ENOMEM;
 }
 INIT_DELAYED_WORK(&md->esd_work, mipid_esd_work);
 mutex_init(&md->mutex);

 md->enabled = panel_enabled(md);

 if (md->enabled)
  mipid_esd_start_check(md);
 else
  md->saved_bklight_level = mipid_get_bklight_level(panel);

 return 0;
}
