
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SISIOADDRESS ;


 int OutPortWord (int ,unsigned short) ;

void
SiS_SetRegShort(SISIOADDRESS port, unsigned short data)
{
   OutPortWord(port, data);
}
