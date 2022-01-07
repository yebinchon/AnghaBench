
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SISIOADDRESS ;


 int OutPortByte (int ,unsigned short) ;

void
SiS_SetRegByte(SISIOADDRESS port, unsigned short data)
{
   OutPortByte(port, data);
}
