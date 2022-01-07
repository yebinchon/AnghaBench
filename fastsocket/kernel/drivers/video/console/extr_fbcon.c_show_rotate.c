
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int acquire_console_sem () ;
 int* con2fb_map ;
 int fbcon_get_rotate (struct fb_info*) ;
 scalar_t__ fbcon_has_exited ;
 size_t fg_console ;
 struct fb_info** registered_fb ;
 int release_console_sem () ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t show_rotate(struct device *device,
      struct device_attribute *attr,char *buf)
{
 struct fb_info *info;
 int rotate = 0, idx;

 if (fbcon_has_exited)
  return 0;

 acquire_console_sem();
 idx = con2fb_map[fg_console];

 if (idx == -1 || registered_fb[idx] == ((void*)0))
  goto err;

 info = registered_fb[idx];
 rotate = fbcon_get_rotate(info);
err:
 release_console_sem();
 return snprintf(buf, PAGE_SIZE, "%d\n", rotate);
}
