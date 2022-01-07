
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fbcon_ops {int flags; } ;
struct fb_info {struct fbcon_ops* fbcon_par; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int FBCON_FLAGS_CURSOR_TIMER ;
 int PAGE_SIZE ;
 int acquire_console_sem () ;
 int* con2fb_map ;
 scalar_t__ fbcon_has_exited ;
 size_t fg_console ;
 struct fb_info** registered_fb ;
 int release_console_sem () ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t show_cursor_blink(struct device *device,
     struct device_attribute *attr, char *buf)
{
 struct fb_info *info;
 struct fbcon_ops *ops;
 int idx, blink = -1;

 if (fbcon_has_exited)
  return 0;

 acquire_console_sem();
 idx = con2fb_map[fg_console];

 if (idx == -1 || registered_fb[idx] == ((void*)0))
  goto err;

 info = registered_fb[idx];
 ops = info->fbcon_par;

 if (!ops)
  goto err;

 blink = (ops->flags & FBCON_FLAGS_CURSOR_TIMER) ? 1 : 0;
err:
 release_console_sem();
 return snprintf(buf, PAGE_SIZE, "%d\n", blink);
}
