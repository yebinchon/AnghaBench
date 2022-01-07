
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct udc {int rxfifo; } ;


 int UDC_BITS_PER_BYTE ;
 int UDC_BYTE_MASK ;
 int UDC_DWORD_BYTES ;
 int VDBG (struct udc*,char*,int) ;
 int readl (int ) ;

__attribute__((used)) static int udc_rxfifo_read_bytes(struct udc *dev, u8 *buf, int bytes)
{
 int i, j;
 u32 tmp;

 VDBG(dev, "udc_read_bytes(): %d bytes\n", bytes);


 for (i = 0; i < bytes / UDC_DWORD_BYTES; i++) {
  *((u32 *)(buf + (i<<2))) = readl(dev->rxfifo);
 }


 if (bytes % UDC_DWORD_BYTES) {
  tmp = readl(dev->rxfifo);
  for (j = 0; j < bytes % UDC_DWORD_BYTES; j++) {
   *(buf + (i<<2) + j) = (u8)(tmp & UDC_BYTE_MASK);
   tmp = tmp >> UDC_BITS_PER_BYTE;
  }
 }

 return 0;
}
