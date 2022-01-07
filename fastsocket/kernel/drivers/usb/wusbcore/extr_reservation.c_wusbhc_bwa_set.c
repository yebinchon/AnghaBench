
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wusbhc {int (* bwa_set ) (struct wusbhc*,int ,struct uwb_mas_bm const*) ;} ;
struct uwb_mas_bm {int dummy; } ;


 int stub1 (struct wusbhc*,int ,struct uwb_mas_bm const*) ;
 struct uwb_mas_bm uwb_mas_bm_zero ;

__attribute__((used)) static int wusbhc_bwa_set(struct wusbhc *wusbhc, u8 stream,
 const struct uwb_mas_bm *mas)
{
 if (mas == ((void*)0))
  mas = &uwb_mas_bm_zero;
 return wusbhc->bwa_set(wusbhc, stream, mas);
}
