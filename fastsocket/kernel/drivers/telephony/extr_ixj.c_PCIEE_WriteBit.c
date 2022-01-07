
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int BYTE ;


 int mdelay (int) ;
 int outb (int,int ) ;

__attribute__((used)) static void PCIEE_WriteBit(WORD wEEPROMAddress, BYTE lastLCC, BYTE byData)
{
 lastLCC = lastLCC & 0xfb;
 lastLCC = lastLCC | (byData ? 4 : 0);
 outb(lastLCC, wEEPROMAddress);

 mdelay(1);
 lastLCC = lastLCC | 0x01;
 outb(lastLCC, wEEPROMAddress);

 byData = byData << 1;
 lastLCC = lastLCC & 0xfe;
 mdelay(1);
 outb(lastLCC, wEEPROMAddress);

}
