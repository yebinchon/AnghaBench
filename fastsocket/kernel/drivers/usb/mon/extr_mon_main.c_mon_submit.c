
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_bus {struct mon_bus* mon_bus; } ;
struct urb {int dummy; } ;
struct mon_bus {int dummy; } ;


 struct mon_bus mon_bus0 ;
 int mon_bus_submit (struct mon_bus*,struct urb*) ;

__attribute__((used)) static void mon_submit(struct usb_bus *ubus, struct urb *urb)
{
 struct mon_bus *mbus;

 if ((mbus = ubus->mon_bus) != ((void*)0))
  mon_bus_submit(mbus, urb);
 mon_bus_submit(&mon_bus0, urb);
}
