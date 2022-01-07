
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct et131x_adapter {int dummy; } ;


 int MiRead (struct et131x_adapter*,int ,int *) ;
 int MiWrite (struct et131x_adapter*,int ,int ) ;

void ET1310_PhyAndOrReg(struct et131x_adapter *etdev,
   uint16_t regnum, uint16_t andMask, uint16_t orMask)
{
 uint16_t reg;


 MiRead(etdev, regnum, &reg);


 reg &= andMask;


 reg |= orMask;


 MiWrite(etdev, regnum, reg);
}
