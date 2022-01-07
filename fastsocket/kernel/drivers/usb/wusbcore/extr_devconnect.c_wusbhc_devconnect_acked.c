
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hdr; } ;
struct wusbhc {TYPE_1__ cack_ie; scalar_t__ cack_count; } ;
struct wusb_dev {int dummy; } ;


 int wusbhc_cack_rm (struct wusbhc*,struct wusb_dev*) ;
 int wusbhc_mmcie_rm (struct wusbhc*,int *) ;
 int wusbhc_mmcie_set (struct wusbhc*,int ,int ,int *) ;

__attribute__((used)) static
void wusbhc_devconnect_acked(struct wusbhc *wusbhc, struct wusb_dev *wusb_dev)
{
 wusbhc_cack_rm(wusbhc, wusb_dev);
 if (wusbhc->cack_count)
  wusbhc_mmcie_set(wusbhc, 0, 0, &wusbhc->cack_ie.hdr);
 else
  wusbhc_mmcie_rm(wusbhc, &wusbhc->cack_ie.hdr);
}
