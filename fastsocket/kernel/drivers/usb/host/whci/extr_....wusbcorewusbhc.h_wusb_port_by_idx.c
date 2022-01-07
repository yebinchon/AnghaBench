
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct wusbhc {struct wusb_port* port; } ;
struct wusb_port {int dummy; } ;



__attribute__((used)) static inline struct wusb_port *wusb_port_by_idx(struct wusbhc *wusbhc,
       u8 port_idx)
{
 return &wusbhc->port[port_idx];
}
