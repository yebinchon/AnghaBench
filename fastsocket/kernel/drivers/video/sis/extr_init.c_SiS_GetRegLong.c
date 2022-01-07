
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SISIOADDRESS ;


 unsigned int InPortLong (int ) ;

unsigned int
SiS_GetRegLong(SISIOADDRESS port)
{
   return(InPortLong(port));
}
