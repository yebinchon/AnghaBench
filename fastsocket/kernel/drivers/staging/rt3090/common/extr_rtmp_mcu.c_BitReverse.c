
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned char BitReverse(unsigned char x)
{
 int i;
 unsigned char Temp=0;
 for(i=0; ; i++)
 {
  if(x & 0x80) Temp |= 0x80;
  if(i==7) break;
  x <<= 1;
  Temp >>= 1;
 }
 return Temp;
}
