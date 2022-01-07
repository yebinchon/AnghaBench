
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_id {int match_flags; int idVendor; int idProduct; int bcdDevice_lo; int bcdDevice_hi; int bDeviceClass; int bInterfaceClass; } ;
struct module {int dummy; } ;


 int TO_NATIVE (int) ;
 int USB_DEVICE_ID_MATCH_DEV_HI ;
 int USB_DEVICE_ID_MATCH_DEV_LO ;
 int do_usb_entry (struct usb_device_id*,unsigned int,int,unsigned char,unsigned char,struct module*) ;

__attribute__((used)) static void do_usb_entry_multi(struct usb_device_id *id, struct module *mod)
{
 unsigned int devlo, devhi;
 unsigned char chi, clo;
 int ndigits;

 id->match_flags = TO_NATIVE(id->match_flags);
 id->idVendor = TO_NATIVE(id->idVendor);
 id->idProduct = TO_NATIVE(id->idProduct);

 devlo = id->match_flags & USB_DEVICE_ID_MATCH_DEV_LO ?
  TO_NATIVE(id->bcdDevice_lo) : 0x0U;
 devhi = id->match_flags & USB_DEVICE_ID_MATCH_DEV_HI ?
  TO_NATIVE(id->bcdDevice_hi) : ~0x0U;





 if (!(id->idVendor | id->idProduct | id->bDeviceClass | id->bInterfaceClass))
  return;


 for (ndigits = sizeof(id->bcdDevice_lo) * 2 - 1; devlo <= devhi; ndigits--) {
  clo = devlo & 0xf;
  chi = devhi & 0xf;
  if (chi > 9)
   chi = 9;
  devlo >>= 4;
  devhi >>= 4;

  if (devlo == devhi || !ndigits) {
   do_usb_entry(id, devlo, ndigits, clo, chi, mod);
   break;
  }

  if (clo > 0)
   do_usb_entry(id, devlo++, ndigits, clo, 9, mod);

  if (chi < 9)
   do_usb_entry(id, devhi--, ndigits, 0, chi, mod);
 }
}
