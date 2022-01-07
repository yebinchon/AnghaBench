
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned int hweight8(unsigned int w)
{
 unsigned int res = w - ((w >> 1) & 0x55);
 res = (res & 0x33) + ((res >> 2) & 0x33);
 return (res + (res >> 4)) & 0x0F;
}
