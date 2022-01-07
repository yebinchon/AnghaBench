
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipid_device {int mutex; scalar_t__ enabled; int saved_bklight_level; } ;
struct lcd_panel {int dummy; } ;


 int mipid_esd_stop_check (struct mipid_device*) ;
 int mipid_get_bklight_level (struct lcd_panel*) ;
 int mipid_set_bklight_level (struct lcd_panel*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_display_state (struct mipid_device*,int ) ;
 int set_sleep_mode (struct mipid_device*,int) ;
 struct mipid_device* to_mipid_device (struct lcd_panel*) ;

__attribute__((used)) static void mipid_disable(struct lcd_panel *panel)
{
 struct mipid_device *md = to_mipid_device(panel);





 mipid_esd_stop_check(md);
 mutex_lock(&md->mutex);

 if (!md->enabled) {
  mutex_unlock(&md->mutex);
  return;
 }
 md->saved_bklight_level = mipid_get_bklight_level(panel);
 mipid_set_bklight_level(panel, 0);
 set_display_state(md, 0);
 set_sleep_mode(md, 1);
 md->enabled = 0;

 mutex_unlock(&md->mutex);
}
