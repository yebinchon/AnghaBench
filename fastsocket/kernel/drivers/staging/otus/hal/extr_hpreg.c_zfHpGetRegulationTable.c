
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u64_t ;
typedef size_t u32_t ;
typedef scalar_t__ u16_t ;
struct zsHpPriv {int OpFlags; scalar_t__ disableDfsCh; } ;
struct cmode {int mode; int flags; } ;
typedef int s16_t ;
struct TYPE_10__ {int privFlags; int maxRegTxPower; int channelFlags; scalar_t__ channel; scalar_t__ maxTxPower; scalar_t__ minTxPower; } ;
typedef TYPE_2__ ZM_HAL_CHANNEL ;
struct TYPE_9__ {scalar_t__ regionCode; int allowChannelCnt; TYPE_2__* allowChannel; } ;
struct TYPE_13__ {TYPE_1__ regulationTable; struct zsHpPriv* hpPrivate; } ;
struct TYPE_12__ {scalar_t__ lowChannel; scalar_t__ highChannel; scalar_t__ channelSep; int useDfs; int channelBW; int usePassScan; int powerDfs; } ;
struct TYPE_11__ {int dfsMask; int pscan; int flags; int * chan11g; int * chan11a; } ;
typedef TYPE_3__ REG_DOMAIN ;
typedef TYPE_4__ REG_DMN_FREQ_BAND ;


 int BMLEN ;
 int DFS_FCC3 ;
 int DbgPrint (char*,...) ;
 int GetWmRD (scalar_t__,int ,TYPE_3__*) ;






 scalar_t__ IS_BIT_SET (int,int *) ;
 int LIMIT_FRAME_4MS ;
 size_t N (struct cmode const*) ;
 int ZM_REG_FLAG_CHANNEL_2GHZ ;
 int ZM_REG_FLAG_CHANNEL_DFS ;
 int ZM_REG_FLAG_CHANNEL_DFS_CLEAR ;
 int ZM_REG_FLAG_CHANNEL_PASSIVE ;
 scalar_t__ isChanBitMaskZero (int *) ;
 struct cmode const* modes ;
 TYPE_4__* regDmn2Ghz11gFreq ;
 TYPE_4__* regDmn5GhzFreq ;
 TYPE_5__* wd ;
 int zm_assert (int) ;
 int zm_debug_msg1 (char*,scalar_t__) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfHpGetRegulationTable(zdev_t* dev, u16_t regionCode, u16_t c_lo, u16_t c_hi)
{
 REG_DOMAIN rd5GHz, rd2GHz;
 const struct cmode *cm;
 s16_t next=0,b;
 struct zsHpPriv* hpPriv;

    zmw_get_wlan_dev(dev);
    hpPriv=wd->hpPrivate;

    zmw_declare_for_critical_section();

 if (!GetWmRD(regionCode, ~ZM_REG_FLAG_CHANNEL_2GHZ, &rd5GHz))
 {
        zm_debug_msg1("couldn't find unitary 5GHz reg domain for Region Code ", regionCode);
  return;
 }
 if (!GetWmRD(regionCode, ZM_REG_FLAG_CHANNEL_2GHZ, &rd2GHz))
 {
        zm_debug_msg1("couldn't find unitary 2GHz reg domain for Region Code ", regionCode);
  return;
 }
    if (wd->regulationTable.regionCode == regionCode)
    {
        zm_debug_msg1("current region code is the same with Region Code ", regionCode);
        return;
    }
    else
    {
        wd->regulationTable.regionCode = regionCode;
    }

    next = 0;

    zmw_enter_critical_section(dev);

 for (cm = modes; cm < &modes[N(modes)]; cm++)
 {
  u16_t c;
  u64_t *channelBM=((void*)0);
  REG_DOMAIN *rd=((void*)0);
  REG_DMN_FREQ_BAND *fband=((void*)0),*freqs=((void*)0);

  switch (cm->mode)
  {
  case 128:


            channelBM = ((void*)0);




   break;
  case 133:
      if ((hpPriv->OpFlags & 0x1) != 0)
      {
       rd = &rd5GHz;
       channelBM = rd->chan11a;
       freqs = &regDmn5GhzFreq[0];
       c_lo = 4920;
       c_hi = 5825;


            }

            {

            }
   break;
  case 131:



   channelBM = ((void*)0);





   break;
  case 130:
      if ((hpPriv->OpFlags & 0x2) != 0)
      {
       rd = &rd2GHz;
       channelBM = rd->chan11g;
       freqs = &regDmn2Ghz11gFreq[0];
       c_lo = 2412;

                c_hi = 2472;


            }

            {

            }
   break;
  case 129:


            channelBM = ((void*)0);




   break;
  case 132:


            channelBM = ((void*)0);




   break;
  default:
            zm_debug_msg1("Unkonwn HAL mode ", cm->mode);
   continue;
  }
  if (channelBM == ((void*)0))
  {

      continue;
        }
        if (isChanBitMaskZero(channelBM))
        {

         continue;
        }


        if (freqs == ((void*)0) )
        {
            continue;
        }

  for (b=0;b<64*BMLEN; b++)
  {
   if (IS_BIT_SET(b,channelBM))
   {
    fband = &freqs[b];




    for (c=fband->lowChannel; c <= fband->highChannel;
         c += fband->channelSep)
    {
     ZM_HAL_CHANNEL icv;


                    if ((hpPriv->disableDfsCh==0) || (!(fband->useDfs & rd->dfsMask)))
                    {
                        if( fband->channelBW < 20 )
                        {






                            continue;
                        }
     if ((c >= c_lo) && (c <= c_hi))
     {
         icv.channel = c;
         icv.channelFlags = cm->flags;
         icv.maxRegTxPower = fband->powerDfs;
         if (fband->usePassScan & rd->pscan)
          icv.channelFlags |= ZM_REG_FLAG_CHANNEL_PASSIVE;
         else
          icv.channelFlags &= ~ZM_REG_FLAG_CHANNEL_PASSIVE;
         if (fband->useDfs & rd->dfsMask)
          icv.privFlags = ZM_REG_FLAG_CHANNEL_DFS;
         else
          icv.privFlags = 0;


         if (fband->useDfs & rd->dfsMask & DFS_FCC3)
         {
          icv.privFlags &= ~ZM_REG_FLAG_CHANNEL_DFS;
          icv.privFlags |= ZM_REG_FLAG_CHANNEL_DFS_CLEAR;
         }

         if(rd->flags & LIMIT_FRAME_4MS)
          icv.privFlags |= ZM_REG_FLAG_CHANNEL_DFS_CLEAR;

         icv.minTxPower = 0;
         icv.maxTxPower = 0;

               zm_assert(next < 60);

         wd->regulationTable.allowChannel[next++] = icv;
        }
    }
   }
  }
 }
 }
 wd->regulationTable.allowChannelCnt = next;
    zmw_leave_critical_section(dev);
}
