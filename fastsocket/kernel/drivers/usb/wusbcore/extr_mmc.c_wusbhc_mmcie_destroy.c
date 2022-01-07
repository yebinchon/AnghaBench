
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int mmcie; } ;


 int kfree (int ) ;

void wusbhc_mmcie_destroy(struct wusbhc *wusbhc)
{
 kfree(wusbhc->mmcie);
}
