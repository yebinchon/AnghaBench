
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char USB_REQ_SET_ADDRESS ;
 unsigned char USB_TYPE_MASK ;
 unsigned char USB_TYPE_STANDARD ;

__attribute__((used)) static int is_set_address(unsigned char *setup_packet)
{
 if (((setup_packet[0] & USB_TYPE_MASK) == USB_TYPE_STANDARD) &&
   setup_packet[1] == USB_REQ_SET_ADDRESS)
  return 1;
 else
  return 0;
}
