
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef int u16_t ;
struct TYPE_3__ {int currentFrequency; int* bssid; scalar_t__ wepStatus; scalar_t__ encryMode; scalar_t__ keyId; } ;
struct TYPE_4__ {scalar_t__ wlanMode; int frequency; int* macAddr; TYPE_1__ sta; int mmseq; } ;


 int ZM_BIT_15 ;
 scalar_t__ ZM_ENCRYPTION_WEP_ENABLED ;
 scalar_t__ ZM_MODE_AP ;
 scalar_t__ ZM_MODE_IBSS ;
 scalar_t__ ZM_MODE_INFRASTRUCTURE ;
 scalar_t__ ZM_MODE_PSEUDO ;
 scalar_t__ ZM_WEP128 ;
 scalar_t__ ZM_WEP256 ;
 scalar_t__ ZM_WEP64 ;
 int ZM_WLAN_FRAME_TYPE_ATIM ;
 int ZM_WLAN_FRAME_TYPE_BA ;
 int ZM_WLAN_FRAME_TYPE_PROBEREQ ;
 int ZM_WLAN_FRAME_TYPE_PSPOLL ;
 int ZM_WLAN_FRAME_TYPE_QOS_NULL ;
 TYPE_2__* wd ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

u16_t zfTxGenMmHeader(zdev_t* dev, u8_t frameType, u16_t* dst,
        u16_t* header, u16_t len, zbuf_t* buf, u16_t vap, u8_t encrypt)
{

    u8_t hlen = 32;

    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();



    header[0] = 24+len+4;
    if ((dst[0] & 0x1) != 0)
    {
        header[1] = 0xc;
    }
    else
    {
        header[1] = 0x8;
    }

    if (wd->wlanMode == ZM_MODE_AP)
    {
        if (wd->frequency < 3000)
        {

            header[2] = 0x0f00;
            header[3] = 0x0000;
        }
        else
        {

            header[2] = 0x0f01;
            header[3] = 0x000B;
        }
    }
    else
    {
        if (wd->sta.currentFrequency < 3000)
        {

            header[2] = 0x0f00;
            header[3] = 0x0001;
        }
        else
        {

            header[2] = 0x0f01;
            header[3] = 0x000B;
        }
    }


    header[4+0] = frameType;

    header[4+1] = 0;

    if (wd->wlanMode == ZM_MODE_INFRASTRUCTURE)
    {
        if ( frameType == ZM_WLAN_FRAME_TYPE_PROBEREQ )
        {
            header[4+8] = 0xFFFF;
            header[4+9] = 0xFFFF;
            header[4+10] = 0xFFFF;
        }
        else if ( frameType == ZM_WLAN_FRAME_TYPE_BA ) {

        }
        else
        {
            header[4+8] = wd->sta.bssid[0];
            header[4+9] = wd->sta.bssid[1];
            header[4+10] = wd->sta.bssid[2];
        }
    }
    else if (wd->wlanMode == ZM_MODE_PSEUDO)
    {

        header[4+8] = 0;
        header[4+9] = 0;
        header[4+10] = 0;
    }
    else if (wd->wlanMode == ZM_MODE_IBSS)
    {
        header[4+8] = wd->sta.bssid[0];
        header[4+9] = wd->sta.bssid[1];
        header[4+10] = wd->sta.bssid[2];

        if ( frameType == ZM_WLAN_FRAME_TYPE_ATIM )
        {


            header[2] |= ZM_BIT_15;
        }
    }
    else if (wd->wlanMode == ZM_MODE_AP)
    {

        header[4+8] = wd->macAddr[0];
        header[4+9] = wd->macAddr[1];



        header[4+10] = wd->macAddr[2] + (vap<<8);





        if (frameType == ZM_WLAN_FRAME_TYPE_PROBEREQ)
        {
            header[4+8] = 0xFFFF;
            header[4+9] = 0xFFFF;
            header[4+10] = 0xFFFF;
        }
    }


    header[4+2] = dst[0];
    header[4+3] = dst[1];
    header[4+4] = dst[2];


    header[4+5] = wd->macAddr[0];
    header[4+6] = wd->macAddr[1];
    if (wd->wlanMode == ZM_MODE_AP)
    {



        header[4+7] = wd->macAddr[2] + (vap<<8);

    }
    else
    {
        header[4+7] = wd->macAddr[2];
    }


    zmw_enter_critical_section(dev);
    header[4+11] = ((wd->mmseq++)<<4);
    zmw_leave_critical_section(dev);

    if( frameType == ZM_WLAN_FRAME_TYPE_QOS_NULL )
    {

        header[4+12] = 0x0;
        hlen+=2;
        header[0]+=2;
    }

    if ( encrypt )
    {
        if ( wd->sta.wepStatus == ZM_ENCRYPTION_WEP_ENABLED )
        {
            if ( (wd->sta.encryMode == ZM_WEP64)||
                 (wd->sta.encryMode == ZM_WEP128)||
                 (wd->sta.encryMode == ZM_WEP256) )
            {
                header[4] |= 0x4000;
                header[16] = 0x0;
                header[17] = 0x0;
                header[17] |= (((u16_t) wd->sta.keyId) << 14);
                hlen += 4;

                header[0] += 8;
                header[1] |= 0x40;
             }
        }
    }


    if ( frameType != ZM_WLAN_FRAME_TYPE_PSPOLL )
    {
        header[1] |= 0x200;
    }

    return hlen;
}
