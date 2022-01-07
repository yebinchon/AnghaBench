
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int BYTE ;


 int inb (int ) ;
 int mdelay (int) ;
 int outb (int,int ) ;

__attribute__((used)) static BYTE PCIEE_ReadBit(WORD wEEPROMAddress, BYTE lastLCC)
{
 mdelay(1);
 lastLCC = lastLCC | 0x01;
 outb(lastLCC, wEEPROMAddress);

 lastLCC = lastLCC & 0xfe;
 mdelay(1);
 outb(lastLCC, wEEPROMAddress);

 return ((inb(wEEPROMAddress) >> 3) & 1);
}
