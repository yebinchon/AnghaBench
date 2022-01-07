
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct m66592 {int dummy; } ;


 int M66592_FRMNUM ;
 struct m66592* gadget_to_m66592 (struct usb_gadget*) ;
 int m66592_read (struct m66592*,int ) ;

__attribute__((used)) static int m66592_get_frame(struct usb_gadget *_gadget)
{
 struct m66592 *m66592 = gadget_to_m66592(_gadget);
 return m66592_read(m66592, M66592_FRMNUM) & 0x03FF;
}
