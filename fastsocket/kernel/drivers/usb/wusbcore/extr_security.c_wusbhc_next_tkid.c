
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wusbhc {int gtk_tkid; } ;
struct wusb_dev {int addr; int port_idx; } ;
struct TYPE_2__ {int ptk_tkid; } ;


 TYPE_1__* wusb_port_by_idx (struct wusbhc*,int ) ;

__attribute__((used)) static u32 wusbhc_next_tkid(struct wusbhc *wusbhc, struct wusb_dev *wusb_dev)
{
 u32 *tkid;
 u32 addr;

 if (wusb_dev == ((void*)0)) {
  tkid = &wusbhc->gtk_tkid;
  addr = 0;
 } else {
  tkid = &wusb_port_by_idx(wusbhc, wusb_dev->port_idx)->ptk_tkid;
  addr = wusb_dev->addr & 0x7f;
 }

 *tkid = (addr << 8) | ((*tkid + 1) & 0xff);

 return *tkid;
}
