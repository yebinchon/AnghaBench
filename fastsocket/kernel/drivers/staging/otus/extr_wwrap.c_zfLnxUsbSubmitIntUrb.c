
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_complete_t ;
typedef int urb_t ;
typedef int u32_t ;
typedef scalar_t__ u16_t ;
struct usb_device {int dummy; } ;


 int GFP_ATOMIC ;
 scalar_t__ USB_DIR_OUT ;
 int usb_fill_int_urb (int *,struct usb_device*,int ,void*,int,int ,void*,int ) ;
 int usb_rcvbulkpipe (struct usb_device*,scalar_t__) ;
 int usb_sndbulkpipe (struct usb_device*,scalar_t__) ;
 int usb_submit_urb (int *,int ) ;

u32_t zfLnxUsbSubmitIntUrb(urb_t *urb, struct usb_device *usb, u16_t epnum, u16_t direction,
        void *transfer_buffer, int buffer_length, usb_complete_t complete, void *context,
        u32_t interval)
{
    u32_t ret;

    if(direction == USB_DIR_OUT)
    {
        usb_fill_int_urb(urb, usb, usb_sndbulkpipe(usb, epnum),
                transfer_buffer, buffer_length, complete, context, interval);
    }
    else
    {
        usb_fill_int_urb(urb, usb, usb_rcvbulkpipe(usb, epnum),
                transfer_buffer, buffer_length, complete, context, interval);
    }

    ret = usb_submit_urb(urb, GFP_ATOMIC);

    return ret;
}
