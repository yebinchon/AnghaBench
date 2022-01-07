
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SISIOADDRESS ;


 int OutPortLong (int ,unsigned int) ;

void
SiS_SetRegLong(SISIOADDRESS port, unsigned int data)
{
   OutPortLong(port, data);
}
