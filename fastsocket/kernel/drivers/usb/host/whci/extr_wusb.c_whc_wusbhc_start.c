
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int dummy; } ;
struct whc {int dummy; } ;


 int asl_start (struct whc*) ;
 int pzl_start (struct whc*) ;
 struct whc* wusbhc_to_whc (struct wusbhc*) ;

int whc_wusbhc_start(struct wusbhc *wusbhc)
{
 struct whc *whc = wusbhc_to_whc(wusbhc);

 asl_start(whc);
 pzl_start(whc);

 return 0;
}
