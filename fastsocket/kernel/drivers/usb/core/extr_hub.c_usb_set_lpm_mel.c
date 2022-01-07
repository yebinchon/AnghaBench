
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_hub {TYPE_3__* descriptor; } ;
struct usb_device {int dummy; } ;
struct usb3_lpm_parameters {int mel; } ;
struct TYPE_4__ {int bHubHdrDecLat; } ;
struct TYPE_5__ {TYPE_1__ ss; } ;
struct TYPE_6__ {TYPE_2__ u; } ;



__attribute__((used)) static void usb_set_lpm_mel(struct usb_device *udev,
  struct usb3_lpm_parameters *udev_lpm_params,
  unsigned int udev_exit_latency,
  struct usb_hub *hub,
  struct usb3_lpm_parameters *hub_lpm_params,
  unsigned int hub_exit_latency)
{
 unsigned int total_mel;
 unsigned int device_mel;
 unsigned int hub_mel;
 total_mel = hub_lpm_params->mel +
  (hub->descriptor->u.ss.bHubHdrDecLat * 100);
 device_mel = udev_exit_latency * 1000;
 hub_mel = hub_exit_latency * 1000;
 if (device_mel > hub_mel)
  total_mel += device_mel;
 else
  total_mel += hub_mel;

 udev_lpm_params->mel = total_mel;
}
