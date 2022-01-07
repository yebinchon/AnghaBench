
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wusbhc {int dummy; } ;
struct wuie_hdr {int bLength; } ;
struct whc {int dummy; } ;


 int WUSBGENCMDSTS_MMCIE_ADD ;
 int whc_do_gencmd (struct whc*,int ,int,struct wuie_hdr*,int) ;
 struct whc* wusbhc_to_whc (struct wusbhc*) ;

int whc_mmcie_add(struct wusbhc *wusbhc, u8 interval, u8 repeat_cnt,
    u8 handle, struct wuie_hdr *wuie)
{
 struct whc *whc = wusbhc_to_whc(wusbhc);
 u32 params;

 params = (interval << 24)
  | (repeat_cnt << 16)
  | (wuie->bLength << 8)
  | handle;

 return whc_do_gencmd(whc, WUSBGENCMDSTS_MMCIE_ADD, params, wuie, wuie->bLength);
}
