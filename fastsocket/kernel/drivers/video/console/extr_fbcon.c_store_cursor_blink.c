
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int fbcon_par; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int acquire_console_sem () ;
 int* con2fb_map ;
 int fbcon_add_cursor_timer (struct fb_info*) ;
 int fbcon_cursor_noblink ;
 int fbcon_del_cursor_timer (struct fb_info*) ;
 scalar_t__ fbcon_has_exited ;
 size_t fg_console ;
 struct fb_info** registered_fb ;
 int release_console_sem () ;
 int simple_strtoul (char const*,char**,int ) ;

__attribute__((used)) static ssize_t store_cursor_blink(struct device *device,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct fb_info *info;
 int blink, idx;
 char **last = ((void*)0);

 if (fbcon_has_exited)
  return count;

 acquire_console_sem();
 idx = con2fb_map[fg_console];

 if (idx == -1 || registered_fb[idx] == ((void*)0))
  goto err;

 info = registered_fb[idx];

 if (!info->fbcon_par)
  goto err;

 blink = simple_strtoul(buf, last, 0);

 if (blink) {
  fbcon_cursor_noblink = 0;
  fbcon_add_cursor_timer(info);
 } else {
  fbcon_cursor_noblink = 1;
  fbcon_del_cursor_timer(info);
 }

err:
 release_console_sem();
 return count;
}
