
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlp_wss {int dummy; } ;
struct uwb_mac_addr {int data; } ;



__attribute__((used)) static
struct uwb_mac_addr wlp_wss_sel_bcast_addr(struct wlp_wss *wss)
{
 struct uwb_mac_addr bcast = {
  .data = { 0x01, 0x13, 0x88, 0x00, 0x01, 0x00 }
 };
 return bcast;
}
