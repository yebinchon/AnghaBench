
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_mixer_elem_info {TYPE_1__* mixer; } ;
struct TYPE_2__ {scalar_t__ protocol; } ;


 scalar_t__ UAC_VERSION_1 ;
 int get_ctl_value_v1 (struct usb_mixer_elem_info*,int,int,int*) ;
 int get_ctl_value_v2 (struct usb_mixer_elem_info*,int,int,int*) ;

__attribute__((used)) static int get_ctl_value(struct usb_mixer_elem_info *cval, int request, int validx, int *value_ret)
{
 return (cval->mixer->protocol == UAC_VERSION_1) ?
  get_ctl_value_v1(cval, request, validx, value_ret) :
  get_ctl_value_v2(cval, request, validx, value_ret);
}
