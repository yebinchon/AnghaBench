
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ep0_txrx_len; scalar_t__ ep0_txrx_pos; int ep0_txrx_buffer; } ;
struct TYPE_4__ {TYPE_1__ usb; } ;


 scalar_t__ BUG_ON (int) ;
 TYPE_2__ fw ;
 int usb_ep0tx_data (int ,scalar_t__) ;

void usb_ep0tx(void)
{
 if (BUG_ON(!fw.usb.ep0_txrx_buffer || !fw.usb.ep0_txrx_len))
  return ;

 usb_ep0tx_data(fw.usb.ep0_txrx_buffer, fw.usb.ep0_txrx_len);
 fw.usb.ep0_txrx_pos = fw.usb.ep0_txrx_len;
}
