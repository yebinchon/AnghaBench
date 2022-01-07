
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlp {int dev_info; int (* fill_device_info ) (struct wlp*,int ) ;} ;


 int stub1 (struct wlp*,int ) ;

__attribute__((used)) static
void __wlp_fill_device_info(struct wlp *wlp)
{
 wlp->fill_device_info(wlp, wlp->dev_info);
}
