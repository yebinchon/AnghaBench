
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int protocol; char* transport_name; int max_lun; void* transport_reset; void* transport; } ;





 void* usb_stor_Bulk_reset ;
 void* usb_stor_Bulk_transport ;
 void* usb_stor_CB_reset ;
 void* usb_stor_CB_transport ;

__attribute__((used)) static void get_transport(struct us_data *us)
{
 switch (us->protocol) {
 case 129:
  us->transport_name = "Control/Bulk";
  us->transport = usb_stor_CB_transport;
  us->transport_reset = usb_stor_CB_reset;
  us->max_lun = 7;
  break;

 case 128:
  us->transport_name = "Control/Bulk/Interrupt";
  us->transport = usb_stor_CB_transport;
  us->transport_reset = usb_stor_CB_reset;
  us->max_lun = 7;
  break;

 case 130:
  us->transport_name = "Bulk";
  us->transport = usb_stor_Bulk_transport;
  us->transport_reset = usb_stor_Bulk_reset;
  break;
 }
}
