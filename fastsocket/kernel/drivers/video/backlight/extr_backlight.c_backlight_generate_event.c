
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct backlight_device {TYPE_1__ dev; } ;
typedef enum backlight_update_reason { ____Placeholder_backlight_update_reason } backlight_update_reason ;




 int KOBJ_CHANGE ;
 int kobject_uevent_env (int *,int ,char**) ;
 int sysfs_notify (int *,int *,char*) ;

__attribute__((used)) static void backlight_generate_event(struct backlight_device *bd,
         enum backlight_update_reason reason)
{
 char *envp[2];

 switch (reason) {
 case 128:
  envp[0] = "SOURCE=sysfs";
  break;
 case 129:
  envp[0] = "SOURCE=hotkey";
  break;
 default:
  envp[0] = "SOURCE=unknown";
  break;
 }
 envp[1] = ((void*)0);
 kobject_uevent_env(&bd->dev.kobj, KOBJ_CHANGE, envp);
 sysfs_notify(&bd->dev.kobj, ((void*)0), "actual_brightness");
}
