
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* controller; } ;
struct TYPE_6__ {TYPE_2__ self; } ;
struct wusbhc {TYPE_3__ usb_hcd; } ;
struct kobject {int dummy; } ;
struct TYPE_4__ {struct kobject kobj; } ;



__attribute__((used)) static inline struct kobject *wusbhc_kobj(struct wusbhc *wusbhc)
{
 return &wusbhc->usb_hcd.self.controller->kobj;
}
