
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sisusb_usb_data {int vramsize; scalar_t__ vrambase; } ;


 int SISUSB_TYPE_MEM ;
 int sisusb_clear_vram (struct sisusb_usb_data*,scalar_t__,int) ;
 int sisusb_write_memio_word (struct sisusb_usb_data*,int ,scalar_t__,int) ;

__attribute__((used)) static int
sisusb_setup_screen(struct sisusb_usb_data *sisusb, int clrall, int drwfr)
{
 int ret = 0;
 u32 address;
 int i, length, modex, modey, bpp;

 modex = 640; modey = 480; bpp = 2;

 address = sisusb->vrambase;

 if (clrall)
  length = sisusb->vramsize;
 else
  length = modex * bpp * modey;

 ret = sisusb_clear_vram(sisusb, address, length);

 if (!ret && drwfr) {
  for (i = 0; i < modex; i++) {
   address = sisusb->vrambase + (i * bpp);
   ret |= sisusb_write_memio_word(sisusb, SISUSB_TYPE_MEM,
       address, 0xf100);
   address += (modex * (modey-1) * bpp);
   ret |= sisusb_write_memio_word(sisusb, SISUSB_TYPE_MEM,
       address, 0xf100);
  }
  for (i = 0; i < modey; i++) {
   address = sisusb->vrambase + ((i * modex) * bpp);
   ret |= sisusb_write_memio_word(sisusb, SISUSB_TYPE_MEM,
       address, 0xf100);
   address += ((modex - 1) * bpp);
   ret |= sisusb_write_memio_word(sisusb, SISUSB_TYPE_MEM,
       address, 0xf100);
  }
 }

 return ret;
}
