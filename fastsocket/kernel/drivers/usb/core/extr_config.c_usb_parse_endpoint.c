
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_host_ss_ep_comp {int dummy; } ;
struct TYPE_5__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_1__ desc; struct usb_host_endpoint* endpoint; } ;
struct usb_endpoint_descriptor {int bLength; int bEndpointAddress; int bInterval; int wMaxPacketSize; int bmAttributes; } ;
struct usb_host_endpoint {unsigned char* extra; int extralen; struct usb_endpoint_descriptor desc; TYPE_4__* ss_ep_comp; int urb_list; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int wBytesPerInterval; scalar_t__ bMaxBurst; int bDescriptorType; int bLength; } ;
struct TYPE_8__ {TYPE_2__ desc; } ;
struct TYPE_7__ {int speed; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int USB_DT_ENDPOINT ;
 int USB_DT_ENDPOINT_AUDIO_SIZE ;
 int USB_DT_ENDPOINT_SIZE ;
 int USB_DT_INTERFACE ;
 int USB_DT_SS_ENDPOINT_COMP ;
 int USB_DT_SS_EP_COMP_SIZE ;
 int USB_ENDPOINT_DIR_MASK ;
 int USB_ENDPOINT_XFER_INT ;

 int USB_SPEED_LOW ;

 int cpu_to_le16 (int) ;
 int dev_dbg (struct device*,char*,int,int ,char*) ;
 int dev_warn (struct device*,char*,int,int,int,int,...) ;
 int find_next_descriptor (unsigned char*,int,int ,int ,int*) ;
 int find_next_descriptor_more (unsigned char*,int,int ,int ,int ,int*) ;
 int fls (int) ;
 TYPE_4__* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int memcpy (struct usb_endpoint_descriptor*,struct usb_endpoint_descriptor*,int) ;
 int plural (int) ;
 TYPE_3__* to_usb_device (struct device*) ;
 scalar_t__ usb_endpoint_xfer_bulk (struct usb_endpoint_descriptor*) ;
 scalar_t__ usb_endpoint_xfer_int (struct usb_endpoint_descriptor*) ;
 scalar_t__ usb_endpoint_xfer_isoc (struct usb_endpoint_descriptor*) ;
 int usb_parse_ss_endpoint_companion (struct device*,int,int,int,struct usb_host_endpoint*,int,unsigned char*,int) ;

__attribute__((used)) static int usb_parse_endpoint(struct device *ddev, int cfgno, int inum,
    int asnum, struct usb_host_interface *ifp, int num_ep,
    unsigned char *buffer, int size)
{
 unsigned char *buffer0 = buffer;
 struct usb_endpoint_descriptor *d;
 struct usb_host_endpoint *endpoint;
 int n, i, j, retval;

 d = (struct usb_endpoint_descriptor *) buffer;
 buffer += d->bLength;
 size -= d->bLength;

 if (d->bLength >= USB_DT_ENDPOINT_AUDIO_SIZE)
  n = USB_DT_ENDPOINT_AUDIO_SIZE;
 else if (d->bLength >= USB_DT_ENDPOINT_SIZE)
  n = USB_DT_ENDPOINT_SIZE;
 else {
  dev_warn(ddev, "config %d interface %d altsetting %d has an "
      "invalid endpoint descriptor of length %d, skipping\n",
      cfgno, inum, asnum, d->bLength);
  goto skip_to_next_endpoint_or_interface_descriptor;
 }

 i = d->bEndpointAddress & ~USB_ENDPOINT_DIR_MASK;
 if (i >= 16 || i == 0) {
  dev_warn(ddev, "config %d interface %d altsetting %d has an "
      "invalid endpoint with address 0x%X, skipping\n",
      cfgno, inum, asnum, d->bEndpointAddress);
  goto skip_to_next_endpoint_or_interface_descriptor;
 }


 if (ifp->desc.bNumEndpoints >= num_ep)
  goto skip_to_next_endpoint_or_interface_descriptor;

 endpoint = &ifp->endpoint[ifp->desc.bNumEndpoints];
 ++ifp->desc.bNumEndpoints;

 memcpy(&endpoint->desc, d, n);
 INIT_LIST_HEAD(&endpoint->urb_list);



 i = 0;
 j = 255;
 if (usb_endpoint_xfer_int(d)) {
  i = 1;
  switch (to_usb_device(ddev)->speed) {
  case 128:
  case 129:




   n = fls(d->bInterval*8);
   if (n == 0)
    n = 9;
   j = 16;
   break;
  default:



   n = 32;
   break;
  }
 } else if (usb_endpoint_xfer_isoc(d)) {
  i = 1;
  j = 16;
  switch (to_usb_device(ddev)->speed) {
  case 129:
   n = 9;
   break;
  default:
   n = 6;
   break;
  }
 }
 if (d->bInterval < i || d->bInterval > j) {
  dev_warn(ddev, "config %d interface %d altsetting %d "
      "endpoint 0x%X has an invalid bInterval %d, "
      "changing to %d\n",
      cfgno, inum, asnum,
      d->bEndpointAddress, d->bInterval, n);
  endpoint->desc.bInterval = n;
 }





 if (to_usb_device(ddev)->speed == USB_SPEED_LOW &&
   usb_endpoint_xfer_bulk(d)) {
  dev_warn(ddev, "config %d interface %d altsetting %d "
      "endpoint 0x%X is Bulk; changing to Interrupt\n",
      cfgno, inum, asnum, d->bEndpointAddress);
  endpoint->desc.bmAttributes = USB_ENDPOINT_XFER_INT;
  endpoint->desc.bInterval = 1;
  if (le16_to_cpu(endpoint->desc.wMaxPacketSize) > 8)
   endpoint->desc.wMaxPacketSize = cpu_to_le16(8);
 }






 if (to_usb_device(ddev)->speed == 129
   && usb_endpoint_xfer_bulk(d)) {
  unsigned maxp;

  maxp = le16_to_cpu(endpoint->desc.wMaxPacketSize) & 0x07ff;
  if (maxp != 512)
   dev_warn(ddev, "config %d interface %d altsetting %d "
    "bulk endpoint 0x%X has invalid maxpacket %d\n",
    cfgno, inum, asnum, d->bEndpointAddress,
    maxp);
 }

 if (to_usb_device(ddev)->speed == 128) {
  endpoint->extra = buffer;
  i = find_next_descriptor_more(buffer, size, USB_DT_SS_ENDPOINT_COMP,
    USB_DT_ENDPOINT, USB_DT_INTERFACE, &n);
  endpoint->extralen = i;
  buffer += i;
  size -= i;


  endpoint->ss_ep_comp = kzalloc(sizeof(struct usb_host_ss_ep_comp),
    GFP_KERNEL);
  if (!endpoint->ss_ep_comp)
   return -ENOMEM;


  endpoint->ss_ep_comp->desc.bLength = USB_DT_SS_EP_COMP_SIZE;
  endpoint->ss_ep_comp->desc.bDescriptorType = USB_DT_SS_ENDPOINT_COMP;
  endpoint->ss_ep_comp->desc.bMaxBurst = 0;







  if (usb_endpoint_xfer_isoc(&endpoint->desc) ||
    usb_endpoint_xfer_int(&endpoint->desc))
   endpoint->ss_ep_comp->desc.wBytesPerInterval =
    endpoint->desc.wMaxPacketSize;

  if (size > 0) {
   retval = usb_parse_ss_endpoint_companion(ddev, cfgno,
     inum, asnum, endpoint, num_ep, buffer,
     size);
   if (retval >= 0) {
    buffer += retval;
    retval = buffer - buffer0;
   }
  } else {
   dev_warn(ddev, "config %d interface %d altsetting %d "
    "endpoint 0x%X has no "
    "SuperSpeed companion descriptor\n",
    cfgno, inum, asnum, d->bEndpointAddress);
   retval = buffer - buffer0;
  }
 } else {


  endpoint->extra = buffer;
  i = find_next_descriptor(buffer, size, USB_DT_ENDPOINT,
    USB_DT_INTERFACE, &n);
  endpoint->extralen = i;
  retval = buffer - buffer0 + i;
 }
 if (n > 0)
  dev_dbg(ddev, "skipped %d descriptor%s after %s\n",
      n, plural(n), "endpoint");
 return retval;

skip_to_next_endpoint_or_interface_descriptor:
 i = find_next_descriptor(buffer, size, USB_DT_ENDPOINT,
     USB_DT_INTERFACE, ((void*)0));
 return buffer - buffer0 + i;
}
