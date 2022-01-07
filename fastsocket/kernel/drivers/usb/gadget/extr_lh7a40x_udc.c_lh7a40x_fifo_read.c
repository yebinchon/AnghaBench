
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lh7a40x_ep {scalar_t__ fifo; } ;


 int USB_OUT_FIFO_WC1 ;
 int usb_read (int ) ;

__attribute__((used)) static __inline__ int lh7a40x_fifo_read(struct lh7a40x_ep *ep,
     unsigned char *cp, int max)
{
 int bytes;
 int count = usb_read(USB_OUT_FIFO_WC1);
 volatile u32 *fifo = (volatile u32 *)ep->fifo;

 if (count > max)
  count = max;
 bytes = count;
 while (count--)
  *cp++ = *fifo & 0xFF;
 return bytes;
}
