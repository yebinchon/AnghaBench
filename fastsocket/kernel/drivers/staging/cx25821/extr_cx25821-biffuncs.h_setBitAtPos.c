
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



inline u32 setBitAtPos(u32 sample, u8 bit)
{
 sample |= (1 << bit);
 return sample;

}
