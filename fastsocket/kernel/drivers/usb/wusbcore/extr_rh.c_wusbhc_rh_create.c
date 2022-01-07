
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int ports_max; int * port; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int * kzalloc (size_t,int ) ;
 int wusb_port_init (int *) ;

int wusbhc_rh_create(struct wusbhc *wusbhc)
{
 int result = -ENOMEM;
 size_t port_size, itr;
 port_size = wusbhc->ports_max * sizeof(wusbhc->port[0]);
 wusbhc->port = kzalloc(port_size, GFP_KERNEL);
 if (wusbhc->port == ((void*)0))
  goto error_port_alloc;
 for (itr = 0; itr < wusbhc->ports_max; itr++)
  wusb_port_init(&wusbhc->port[itr]);
 result = 0;
error_port_alloc:
 return result;
}
