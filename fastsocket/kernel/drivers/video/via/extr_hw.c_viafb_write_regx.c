
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_reg {unsigned char index; unsigned char mask; unsigned char value; scalar_t__ port; } ;


 unsigned char inb (scalar_t__) ;
 int outb (unsigned char,scalar_t__) ;

void viafb_write_regx(struct io_reg RegTable[], int ItemNum)
{
 int i;
 unsigned char RegTemp;



 for (i = 0; i < ItemNum; i++) {
  outb(RegTable[i].index, RegTable[i].port);
  RegTemp = inb(RegTable[i].port + 1);
  RegTemp = (RegTemp & (~RegTable[i].mask)) | RegTable[i].value;
  outb(RegTemp, RegTable[i].port + 1);
 }
}
