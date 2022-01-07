
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct et131x_adapter {int dummy; } ;


 int MiRead (struct et131x_adapter*,int,int*) ;
 int MiWrite (struct et131x_adapter*,int,int) ;




void ET1310_PhyAccessMiBit(struct et131x_adapter *etdev, uint16_t action,
      uint16_t regnum, uint16_t bitnum, uint8_t *value)
{
 uint16_t reg;
 uint16_t mask = 0;


 mask = 0x0001 << bitnum;


 MiRead(etdev, regnum, &reg);

 switch (action) {
 case 129:
  if (value != ((void*)0))
   *value = (reg & mask) >> bitnum;
  break;

 case 128:
  reg |= mask;
  MiWrite(etdev, regnum, reg);
  break;

 case 130:
  reg &= ~mask;
  MiWrite(etdev, regnum, reg);
  break;

 default:
  break;
 }
}
