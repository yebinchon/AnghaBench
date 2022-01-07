
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int u64_t ;
typedef int u32_t ;


 int FALSE ;
 int TRUE ;

u8_t IS_BIT_SET(u32_t bit, u64_t *bitmask)
{
 u32_t byteOffset, bitnum;
 u64_t val;

 byteOffset = bit/64;
 bitnum = bit - byteOffset*64;
 val = ((u64_t) 1) << bitnum;
 if (bitmask[byteOffset] & val)
  return TRUE;
 else
  return FALSE;
}
