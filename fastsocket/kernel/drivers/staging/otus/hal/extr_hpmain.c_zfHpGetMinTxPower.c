
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
struct zsHpPriv {int hwFrequency; int* tPow2x2gHt40; int* tPow2x2gHt20; int* tPow2x5gHt40; int* tPow2x5gHt20; } ;
struct TYPE_2__ {scalar_t__ BandWidth40; struct zsHpPriv* hpPrivate; } ;


 TYPE_1__* wd ;
 int zmw_get_wlan_dev (int *) ;

u8_t zfHpGetMinTxPower(zdev_t* dev)
{
    struct zsHpPriv* hpPriv;
    u8_t tpc = 0;

    zmw_get_wlan_dev(dev);
    hpPriv = wd->hpPrivate;

    if (hpPriv->hwFrequency < 3000)
    {
        if(wd->BandWidth40)
        {

            tpc = (hpPriv->tPow2x2gHt40[7]&0x3f);
        }
        else
        {

            tpc = (hpPriv->tPow2x2gHt20[7]&0x3f);
        }
    }
    else
    {
        if(wd->BandWidth40)
        {

            tpc = (hpPriv->tPow2x5gHt40[7]&0x3f);
        }
        else
        {

            tpc = (hpPriv->tPow2x5gHt20[7]&0x3f);
        }
    }

    return tpc;
}
