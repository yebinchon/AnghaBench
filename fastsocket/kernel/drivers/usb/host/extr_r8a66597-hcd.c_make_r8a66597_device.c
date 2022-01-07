
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct urb {int* setup_packet; TYPE_2__* dev; } ;
struct r8a66597_device {int usb_address; size_t root_port; int hub_port; int address; int device_list; scalar_t__ ep_out_toggle; scalar_t__ ep_in_toggle; int state; TYPE_2__* udev; } ;
struct r8a66597 {TYPE_1__* root_hub; int child_device; } ;
struct TYPE_4__ {int speed; int devpath; int dev; } ;
struct TYPE_3__ {struct r8a66597_device* dev; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int USB_STATE_ADDRESS ;
 int dev_set_drvdata (int *,struct r8a66597_device*) ;
 int get_parent_r8a66597_address (struct r8a66597*,TYPE_2__*) ;
 int get_port_number (struct r8a66597*,int ,size_t*,int *) ;
 int get_r8a66597_usb_speed (int ) ;
 int is_child_device (int ) ;
 struct r8a66597_device* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int set_devadd_reg (struct r8a66597*,int ,int ,int ,int ,size_t) ;

__attribute__((used)) static int make_r8a66597_device(struct r8a66597 *r8a66597,
    struct urb *urb, u8 addr)
{
 struct r8a66597_device *dev;
 int usb_address = urb->setup_packet[2];

 dev = kzalloc(sizeof(struct r8a66597_device), GFP_ATOMIC);
 if (dev == ((void*)0))
  return -ENOMEM;

 dev_set_drvdata(&urb->dev->dev, dev);
 dev->udev = urb->dev;
 dev->address = addr;
 dev->usb_address = usb_address;
 dev->state = USB_STATE_ADDRESS;
 dev->ep_in_toggle = 0;
 dev->ep_out_toggle = 0;
 INIT_LIST_HEAD(&dev->device_list);
 list_add_tail(&dev->device_list, &r8a66597->child_device);

 get_port_number(r8a66597, urb->dev->devpath,
   &dev->root_port, &dev->hub_port);
 if (!is_child_device(urb->dev->devpath))
  r8a66597->root_hub[dev->root_port].dev = dev;

 set_devadd_reg(r8a66597, dev->address,
         get_r8a66597_usb_speed(urb->dev->speed),
         get_parent_r8a66597_address(r8a66597, urb->dev),
         dev->hub_port, dev->root_port);

 return 0;
}
