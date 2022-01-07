
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct sisusb_usb_data {int dummy; } ;


 int GETIREG (int ,int,int*) ;
 int READB (scalar_t__,int*) ;
 int SETIREG (int ,int,int) ;
 int SETIREGAND (int ,int,int) ;
 int SETIREGOR (int ,int,int) ;
 int SISSR ;
 scalar_t__ SISUSB_PCI_MEMBASE ;
 int WRITEB (scalar_t__,int) ;

__attribute__((used)) static int
sisusb_verify_mclk(struct sisusb_usb_data *sisusb)
{
 int ret = 0;
 u32 ramptr = SISUSB_PCI_MEMBASE;
 u8 tmp1, tmp2, i, j;

 ret |= WRITEB(ramptr, 0xaa);
 ret |= WRITEB(ramptr + 16, 0x55);
 ret |= READB(ramptr, &tmp1);
 ret |= READB(ramptr + 16, &tmp2);
 if ((tmp1 != 0xaa) || (tmp2 != 0x55)) {
  for (i = 0, j = 16; i < 2; i++, j += 16) {
   ret |= GETIREG(SISSR, 0x21, &tmp1);
   ret |= SETIREGAND(SISSR, 0x21, (tmp1 & 0xfb));
   ret |= SETIREGOR(SISSR, 0x3c, 0x01);
   ret |= SETIREGAND(SISSR, 0x3c, 0xfe);
   ret |= SETIREG(SISSR, 0x21, tmp1);
   ret |= WRITEB(ramptr + 16 + j, j);
   ret |= READB(ramptr + 16 + j, &tmp1);
   if (tmp1 == j) {
    ret |= WRITEB(ramptr + j, j);
    break;
   }
  }
 }
 return ret;
}
