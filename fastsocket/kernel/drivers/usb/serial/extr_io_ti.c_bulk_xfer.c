
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial {TYPE_1__** port; int dev; } ;
struct TYPE_2__ {int bulk_out_endpointAddress; } ;


 int usb_bulk_msg (int ,int ,void*,int,int*,int) ;
 int usb_sndbulkpipe (int ,int ) ;

__attribute__((used)) static int bulk_xfer(struct usb_serial *serial, void *buffer,
      int length, int *num_sent)
{
 int status;

 status = usb_bulk_msg(serial->dev,
   usb_sndbulkpipe(serial->dev,
    serial->port[0]->bulk_out_endpointAddress),
   buffer, length, num_sent, 1000);
 return status;
}
