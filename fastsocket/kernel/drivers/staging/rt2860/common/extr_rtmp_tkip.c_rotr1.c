
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;



UINT rotr1(UINT a)
{
 unsigned int b;

 if ((a & 0x01) == 0x01)
 {
  b = (a >> 1) | 0x8000;
 }
 else
 {
  b = (a >> 1) & 0x7fff;
 }
 b = b % 65536;
 return b;
}
