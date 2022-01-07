
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SISIOADDRESS ;


 unsigned short SiS_GetReg (int ,unsigned short) ;
 int SiS_SetReg (int ,unsigned short,unsigned short) ;

void
SiS_SetRegAND(SISIOADDRESS Port, unsigned short Index, unsigned short DataAND)
{
   unsigned short temp;

   temp = SiS_GetReg(Port, Index);
   temp &= DataAND;
   SiS_SetReg(Port, Index, temp);
}
