
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wusbhc {int dummy; } ;




 int EPIPE ;

__attribute__((used)) static int wusbhc_rh_clear_hub_feat(struct wusbhc *wusbhc, u16 feature)
{
 int result;

 switch (feature) {
 case 129:



 case 128:
  result = 0;
  break;
 default:
  result = -EPIPE;
 }
 return result;
}
