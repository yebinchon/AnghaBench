
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SISIOADDRESS ;


 int OutPortByte (scalar_t__,unsigned short) ;

void
SiS_SetReg(SISIOADDRESS port, unsigned short index, unsigned short data)
{
   OutPortByte(port, index);
   OutPortByte(port + 1, data);
}
