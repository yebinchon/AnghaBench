
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SISIOADDRESS ;


 unsigned char InPortByte (scalar_t__) ;
 int OutPortByte (scalar_t__,unsigned short) ;

unsigned char
SiS_GetReg(SISIOADDRESS port, unsigned short index)
{
   OutPortByte(port, index);
   return(InPortByte(port + 1));
}
