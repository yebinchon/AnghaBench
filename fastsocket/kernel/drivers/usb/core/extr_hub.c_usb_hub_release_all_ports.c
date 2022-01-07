
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int maxchild; } ;


 int find_port_owner (struct usb_device*,int,void***) ;

void usb_hub_release_all_ports(struct usb_device *hdev, void *owner)
{
 int n;
 void **powner;

 n = find_port_owner(hdev, 1, &powner);
 if (n == 0) {
  for (; n < hdev->maxchild; (++n, ++powner)) {
   if (*powner == owner)
    *powner = ((void*)0);
  }
 }
}
