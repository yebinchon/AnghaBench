
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int variax_activate ;
struct usb_line6_variax {int* buffer_activate; int line6; } ;


 size_t VARIAX_OFFSET_ACTIVATE ;
 int line6_send_raw_message_async (int *,int*,int) ;

__attribute__((used)) static void variax_activate_timeout(unsigned long arg)
{
 struct usb_line6_variax *variax = (struct usb_line6_variax *)arg;
 variax->buffer_activate[VARIAX_OFFSET_ACTIVATE] = 1;
 line6_send_raw_message_async(&variax->line6, variax->buffer_activate,
         sizeof(variax_activate));
}
