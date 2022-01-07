
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipid_device {int enabled; int mutex; int saved_bklight_level; } ;
struct lcd_panel {int dummy; } ;


 int mipid_esd_start_check (struct mipid_device*) ;
 int mipid_set_bklight_level (struct lcd_panel*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int send_init_string (struct mipid_device*) ;
 int set_display_state (struct mipid_device*,int) ;
 int set_sleep_mode (struct mipid_device*,int ) ;
 struct mipid_device* to_mipid_device (struct lcd_panel*) ;

__attribute__((used)) static int mipid_enable(struct lcd_panel *panel)
{
 struct mipid_device *md = to_mipid_device(panel);

 mutex_lock(&md->mutex);

 if (md->enabled) {
  mutex_unlock(&md->mutex);
  return 0;
 }
 set_sleep_mode(md, 0);
 md->enabled = 1;
 send_init_string(md);
 set_display_state(md, 1);
 mipid_set_bklight_level(panel, md->saved_bklight_level);
 mipid_esd_start_check(md);

 mutex_unlock(&md->mutex);
 return 0;
}
