
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {struct usb_device* parent; } ;
struct usb3_lpm_parameters {unsigned int pel; unsigned int sel; } ;



__attribute__((used)) static void usb_set_lpm_sel(struct usb_device *udev,
  struct usb3_lpm_parameters *udev_lpm_params)
{
 struct usb_device *parent;
 unsigned int num_hubs;
 unsigned int total_sel;


 total_sel = udev_lpm_params->pel;

 for (parent = udev->parent, num_hubs = 0; parent->parent;
   parent = parent->parent)
  num_hubs++;

 if (num_hubs > 0)
  total_sel += 2100 + 250 * (num_hubs - 1);


 total_sel += 250 * num_hubs;

 udev_lpm_params->sel = total_sel;
}
