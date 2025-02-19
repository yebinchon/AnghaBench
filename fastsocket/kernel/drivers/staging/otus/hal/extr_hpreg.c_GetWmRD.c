
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8_t ;
typedef scalar_t__ u64_t ;
typedef scalar_t__ u32_t ;
typedef scalar_t__ u16_t ;
typedef size_t s16_t ;
struct TYPE_8__ {scalar_t__ regDmnEnum; size_t regDmn2GHz; size_t regDmn5GHz; int pscanMask; scalar_t__ flags5GHz; scalar_t__ flags2GHz; } ;
struct TYPE_7__ {scalar_t__ flags; int pscan; } ;
typedef TYPE_1__ REG_DOMAIN ;
typedef TYPE_2__ REG_DMN_PAIR_MAPPING ;


 int FALSE ;
 size_t N (TYPE_2__*) ;
 scalar_t__ NO_REQ ;
 int TRUE ;
 scalar_t__ ZM_REG_FLAG_CHANNEL_2GHZ ;
 TYPE_2__* regDomainPairs ;
 TYPE_2__* regDomains ;
 int zfMemoryCopy (int *,int *,int) ;
 int zm_debug_msg1 (char*,scalar_t__) ;

u8_t GetWmRD(u16_t regionCode, u16_t channelFlag, REG_DOMAIN *rd)
{
 s16_t i, found, regDmn;
 u64_t flags=NO_REQ;
 REG_DMN_PAIR_MAPPING *regPair=((void*)0);

 for (i=0, found=0; (i<N(regDomainPairs))&&(!found); i++)
 {
  if (regDomainPairs[i].regDmnEnum == regionCode)
  {
   regPair = &regDomainPairs[i];
   found = 1;
  }
 }
 if (!found)
 {
  zm_debug_msg1("Failed to find reg domain pair ", regionCode);
  return FALSE;
 }

 if (channelFlag & ZM_REG_FLAG_CHANNEL_2GHZ)
 {
  regDmn = regPair->regDmn2GHz;
  flags = regPair->flags2GHz;
 }
    else
 {
  regDmn = regPair->regDmn5GHz;
  flags = regPair->flags5GHz;
 }






 for (i=0;i<N(regDomains); i++)
 {
  if (regDomains[i].regDmnEnum == regDmn)
  {
   if (rd != ((void*)0))
   {
    zfMemoryCopy((u8_t *)rd, (u8_t *)&regDomains[i],
       sizeof(REG_DOMAIN));
   }
  }
 }
 rd->pscan &= regPair->pscanMask;
    rd->flags = (u32_t)flags;
 return TRUE;
}
