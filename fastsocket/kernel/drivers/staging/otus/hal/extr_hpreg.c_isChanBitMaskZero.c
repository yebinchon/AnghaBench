
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef scalar_t__ u64_t ;
typedef size_t u16_t ;


 size_t BMLEN ;
 int FALSE ;
 int TRUE ;

u8_t isChanBitMaskZero(u64_t *bitmask)
{
 u16_t i;

 for (i=0; i<BMLEN; i++) {
  if (bitmask[i] != 0)
   return FALSE;
 }
 return TRUE;
}
