
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8_t ;
typedef int u32_t ;


 scalar_t__* zcOfdmPhyCrtlToRate ;

u8_t zfPhyCtrlToRate(u32_t phyCtrl)
{
    u32_t mt, mcs, sg;
    u8_t rate = 0;

    mt = phyCtrl & 0x3;
    mcs = (phyCtrl>>18) & 0x3f;
    sg = (phyCtrl>>31) & 0x1;

    if ((mt == 0) && (mcs <=3))
    {
        rate = (u8_t)mcs;
    }
    else if ((mt == 1) && (mcs >= 0x8) && (mcs <= 0xf))
    {
        rate = zcOfdmPhyCrtlToRate[mcs-8];
    }
    else if ((mt == 2) && (mcs <= 15))
    {
        rate = (u8_t)mcs + 12;
        if(sg) {
            if (mcs != 7)
            {
                rate = (u8_t)mcs + 12 + 2;
            }
            else
            {
                rate = (u8_t)30;
            }
        }
    }

    return rate;
}
