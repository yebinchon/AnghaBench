
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wusbhc {int dummy; } ;
struct whc {scalar_t__ base; } ;


 int WUSBGENCMDSTS_CHAN_STOP ;
 scalar_t__ WUSBTIME ;
 int WUSBTIME_CHANNEL_TIME_MASK ;
 int asl_stop (struct whc*) ;
 int le_readl (scalar_t__) ;
 int msleep (int) ;
 int pzl_stop (struct whc*) ;
 int whc_do_gencmd (struct whc*,int ,int,int *,int ) ;
 struct whc* wusbhc_to_whc (struct wusbhc*) ;

void whc_wusbhc_stop(struct wusbhc *wusbhc, int delay)
{
 struct whc *whc = wusbhc_to_whc(wusbhc);
 u32 stop_time, now_time;
 int ret;

 pzl_stop(whc);
 asl_stop(whc);

 now_time = le_readl(whc->base + WUSBTIME) & WUSBTIME_CHANNEL_TIME_MASK;
 stop_time = (now_time + ((delay * 8) << 7)) & 0x00ffffff;
 ret = whc_do_gencmd(whc, WUSBGENCMDSTS_CHAN_STOP, stop_time, ((void*)0), 0);
 if (ret == 0)
  msleep(delay);
}
