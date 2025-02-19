
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_hcd {int dummy; } ;
struct c67x00_sie {int dummy; } ;
struct c67x00_hcd {struct c67x00_sie* sie; } ;


 int C67X00_PORTS ;
 int PORT_CONNECT_CHANGE (int) ;
 int c67x00_ll_usb_get_status (struct c67x00_sie*) ;
 struct c67x00_hcd* hcd_to_c67x00_hcd (struct usb_hcd*) ;

__attribute__((used)) static int c67x00_hub_status_data(struct usb_hcd *hcd, char *buf)
{
 struct c67x00_hcd *c67x00 = hcd_to_c67x00_hcd(hcd);
 struct c67x00_sie *sie = c67x00->sie;
 u16 status;
 int i;

 *buf = 0;
 status = c67x00_ll_usb_get_status(sie);
 for (i = 0; i < C67X00_PORTS; i++)
  if (status & PORT_CONNECT_CHANGE(i))
   *buf |= (1 << i);


 *buf <<= 1;

 return !!*buf;
}
