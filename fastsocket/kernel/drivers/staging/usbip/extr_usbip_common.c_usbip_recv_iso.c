
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbip_iso_packet_descriptor {int dummy; } ;
struct usbip_device {scalar_t__ side; int tcp_socket; } ;
struct urb {int number_of_packets; int * iso_frame_desc; TYPE_1__* dev; int pipe; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int EPIPE ;
 int GFP_KERNEL ;
 int SDEV_EVENT_ERROR_TCP ;
 scalar_t__ USBIP_STUB ;
 int VDEV_EVENT_ERROR_TCP ;
 int dev_err (int *,char*,int) ;
 int kfree (void*) ;
 void* kzalloc (int,int ) ;
 int usb_pipeisoc (int ) ;
 int usbip_event_add (struct usbip_device*,int ) ;
 int usbip_iso_pakcet_correct_endian (struct usbip_iso_packet_descriptor*,int ) ;
 int usbip_pack_iso (struct usbip_iso_packet_descriptor*,int *,int ) ;
 int usbip_xmit (int ,int ,void*,int,int ) ;

int usbip_recv_iso(struct usbip_device *ud, struct urb *urb)
{
 void *buff;
 struct usbip_iso_packet_descriptor *iso;
 int np = urb->number_of_packets;
 int size = np * sizeof(*iso);
 int i;
 int ret;

 if (!usb_pipeisoc(urb->pipe))
  return 0;


 if (np == 0) {


  return 0;
 }

 buff = kzalloc(size, GFP_KERNEL);
 if (!buff)
  return -ENOMEM;

 ret = usbip_xmit(0, ud->tcp_socket, buff, size, 0);
 if (ret != size) {
  dev_err(&urb->dev->dev, "recv iso_frame_descriptor, %d\n",
   ret);
  kfree(buff);

  if (ud->side == USBIP_STUB)
   usbip_event_add(ud, SDEV_EVENT_ERROR_TCP);
  else
   usbip_event_add(ud, VDEV_EVENT_ERROR_TCP);

  return -EPIPE;
 }

 for (i = 0; i < np; i++) {
  iso = buff + (i * sizeof(*iso));

  usbip_iso_pakcet_correct_endian(iso, 0);
  usbip_pack_iso(iso, &urb->iso_frame_desc[i], 0);
 }

 kfree(buff);

 return ret;
}
