
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SISIOADDRESS ;


 unsigned short InPortWord (int ) ;

unsigned short
SiS_GetRegShort(SISIOADDRESS port)
{
   return(InPortWord(port));
}
