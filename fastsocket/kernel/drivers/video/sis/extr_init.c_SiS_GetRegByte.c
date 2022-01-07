
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SISIOADDRESS ;


 unsigned char InPortByte (int ) ;

unsigned char
SiS_GetRegByte(SISIOADDRESS port)
{
   return(InPortByte(port));
}
