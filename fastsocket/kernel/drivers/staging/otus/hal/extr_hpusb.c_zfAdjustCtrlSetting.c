
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u32_t ;
typedef int u16_t ;
struct zsHpPriv {int halCapability; int hwFrequency; int* tPow2xCck; int* tPow2x2g; int tPow2x2g24HeavyClipOffset; int* tPow2x2gHt40; int* tPow2x2gHt20; int* tPow2x5g; int* tPow2x5gHt40; int* tPow2x5gHt20; scalar_t__ hwBw40; } ;
struct TYPE_3__ {scalar_t__ bScheduleScan; scalar_t__ bChannelScan; } ;
struct TYPE_4__ {int forceTxTPC; int maxTxPower2; int maxTxPower5; scalar_t__ wlanMode; scalar_t__ SignalStrength; TYPE_1__ sta; struct zsHpPriv* hpPrivate; } ;


 scalar_t__ FALSE ;
 int ZM_HP_CAP_11N_ONE_TX_STREAM ;
 int ZM_LV_2 ;
 int ZM_MIN_TPC ;
 scalar_t__ ZM_MODE_INFRASTRUCTURE ;
 scalar_t__ ZM_SIGNAL_THRESHOLD ;
 int ZM_TPC_OFFSET ;
 TYPE_2__* wd ;
 scalar_t__ zfStaIsConnected (int *) ;
 int zm_msg2_tx (int ,char*,int) ;
 int zmw_buf_readh (int *,int *,int) ;
 int zmw_buf_writeh (int *,int *,int,int) ;
 int zmw_get_wlan_dev (int *) ;

void zfAdjustCtrlSetting(zdev_t* dev, u16_t* header, zbuf_t* buf)
{



    u32_t oldMT;
 u32_t oldMCS;

    u32_t phyCtrl;
    u32_t oldPhyCtrl;

    u16_t tpc = 0;
    struct zsHpPriv* hpPriv;

    zmw_get_wlan_dev(dev);
    hpPriv=wd->hpPrivate;


    if (header == ((void*)0))
    {
        oldPhyCtrl = zmw_buf_readh(dev, buf, 4) | ((u32_t)zmw_buf_readh(dev, buf, 6) << 16);
    }
    else
    {
        oldPhyCtrl = header[2] | ((u32_t)header[3] <<16);
    }

 phyCtrl = 0;



 oldMT = oldPhyCtrl&0x3;
 phyCtrl |= oldMT;
    if ( oldMT == 0x3 )
  phyCtrl |= 0x1;



 phyCtrl |= (oldPhyCtrl&0x4);


 if ( oldPhyCtrl&0x800000 )
 {






  if (oldMT == 0x2 && ((struct zsHpPriv*)wd->hpPrivate)->hwBw40)
  {
   phyCtrl |= (0x2<<3);
  }

 }
 else {
        oldPhyCtrl &= ~0x80000000;
    }


 oldMCS = (oldPhyCtrl&0x7f0000)>>16;
 phyCtrl |= (oldMCS<<18);


    phyCtrl |= (oldPhyCtrl&0x80000000);



 if (hpPriv->halCapability & ZM_HP_CAP_11N_ONE_TX_STREAM)
 {
     phyCtrl |= (0x1<<15);
 }
 else
 {




     if ((oldMT == 2) || (oldMT == 3))
     {
         phyCtrl |= (0x5<<15);
     }
     else if (oldMT == 1)
     {
         if ((oldMCS == 0xb) || (oldMCS == 0xf) ||
             (oldMCS == 0xa) || (oldMCS == 0xe) ||
             (oldMCS == 0x9))
         {
             phyCtrl |= (0x5<<15);
         }
         else
         {
             phyCtrl |= (0x1<<15);
         }
     }
     else
     {
         phyCtrl |= (0x5<<15);
     }
 }





 if (hpPriv->hwFrequency < 3000)
 {
        if (oldMT == 0)
        {

            tpc = (hpPriv->tPow2xCck[oldMCS]&0x3f);
        }
        else if (oldMT == 1)
        {

            if (oldMCS == 0xc)
            {
                tpc = (hpPriv->tPow2x2g[3]&0x3f);
            }
            else if (oldMCS == 0x8)
            {
                tpc = (hpPriv->tPow2x2g[2]&0x3f);
            }
            else if (oldMCS == 0xd)
            {
                tpc = (hpPriv->tPow2x2g[1]&0x3f);
            }
            else if (oldMCS == 0x9)
            {
                tpc = ((hpPriv->tPow2x2g[0]-hpPriv->tPow2x2g24HeavyClipOffset)&0x3f);
            }
            else
            {
                tpc = (hpPriv->tPow2x2g[0]&0x3f);
            }
        }
        else if (oldMT == 2)
        {
            if ( oldPhyCtrl&0x800000 )
            {

                tpc = (hpPriv->tPow2x2gHt40[oldMCS&0x7]&0x3f);
            }
            else
            {

                tpc = (hpPriv->tPow2x2gHt20[oldMCS&0x7]&0x3f);
            }
        }
    }
    else
    {
        if (oldMT == 1)
        {

            if (oldMCS == 0xc)
            {
                tpc = (hpPriv->tPow2x5g[3]&0x3f);
            }
            else if (oldMCS == 0x8)
            {
                tpc = (hpPriv->tPow2x5g[2]&0x3f);
            }
            else if (oldMCS == 0xd)
            {
                tpc = (hpPriv->tPow2x5g[1]&0x3f);
            }
            else
            {
                tpc = (hpPriv->tPow2x5g[0]&0x3f);
            }
        }
        else if (oldMT == 2)
        {
            if ( oldPhyCtrl&0x800000 )
            {

                tpc = (hpPriv->tPow2x5gHt40[oldMCS&0x7]&0x3f);
            }
            else
            {

                tpc = (hpPriv->tPow2x5gHt20[oldMCS&0x7]&0x3f);
            }
        }
    }



 if ((oldMT==2) && (oldPhyCtrl&0x800000) )
 {
     tpc += 2;
 }
 tpc &= 0x3f;


    if(wd->forceTxTPC)
    {
        tpc = (u16_t)(wd->forceTxTPC & 0x3f);
    }

    if (hpPriv->hwFrequency < 3000) {
        wd->maxTxPower2 &= 0x3f;
        tpc = (tpc > wd->maxTxPower2)? wd->maxTxPower2 : tpc;
    } else {
        wd->maxTxPower5 &= 0x3f;
        tpc = (tpc > wd->maxTxPower5)? wd->maxTxPower5 : tpc;
    }





    if ((wd->sta.bScheduleScan == FALSE) && (wd->sta.bChannelScan == FALSE))
    {
        if (( wd->wlanMode == ZM_MODE_INFRASTRUCTURE )
                && (zfStaIsConnected(dev))
                && (wd->SignalStrength > 56))
        {
            if (tpc > ((5 +5)*2))
            {
                tpc -= (5*2);
            }
            else if (tpc > (5*2))
            {
                tpc = (5*2);
            }
        }
    }





    phyCtrl |= (tpc & 0x3f) << 9;



    if ((phyCtrl&0x3) == 2)
 {
     phyCtrl |= ((phyCtrl >> 12) & 0x1c0);
    }


    if (header == ((void*)0))
    {
        zmw_buf_writeh(dev, buf, 4, (u16_t) (phyCtrl&0xffff));
        zmw_buf_writeh(dev, buf, 6, (u16_t) (phyCtrl>>16));
    }
    else
    {

        header[2] = (u16_t) (phyCtrl&0xffff);

        header[3] = (u16_t) (phyCtrl>>16);
    }

 zm_msg2_tx(ZM_LV_2, "old phy ctrl = ", oldPhyCtrl);
    zm_msg2_tx(ZM_LV_2, "new phy ctrl = ", phyCtrl);


}
