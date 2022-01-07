
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int dummy; } ;
struct wusb_dn_hdr {int dummy; } ;
struct whc {struct dn_buf_entry* dn_buf; struct wusbhc wusbhc; } ;
struct dn_buf_entry {int status; int msg_size; scalar_t__ dn_data; int src_addr; } ;


 int WHC_DN_STATUS_VALID ;
 int WHC_N_DN_ENTRIES ;
 int wusbhc_handle_dn (struct wusbhc*,int ,struct wusb_dn_hdr*,int ) ;

__attribute__((used)) static int process_dn_buf(struct whc *whc)
{
 struct wusbhc *wusbhc = &whc->wusbhc;
 struct dn_buf_entry *dn;
 int processed = 0;

 for (dn = whc->dn_buf; dn < whc->dn_buf + WHC_N_DN_ENTRIES; dn++) {
  if (dn->status & WHC_DN_STATUS_VALID) {
   wusbhc_handle_dn(wusbhc, dn->src_addr,
      (struct wusb_dn_hdr *)dn->dn_data,
      dn->msg_size);
   dn->status &= ~WHC_DN_STATUS_VALID;
   processed++;
  }
 }
 return processed;
}
