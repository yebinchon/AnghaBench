
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u16_t ;
struct TYPE_5__ {int* bssid; scalar_t__ authMode; scalar_t__ ibssAdditionalIESize; int * capability; } ;
struct TYPE_4__ {scalar_t__ bIbssGMode; } ;
struct TYPE_6__ {int* macAddr; int beaconInterval; scalar_t__ frequency; int supportMode; scalar_t__ wlanMode; TYPE_2__ sta; TYPE_1__ wfc; scalar_t__ erpElement; int mmseq; } ;


 scalar_t__ ZM_AUTH_MODE_WPA2PSK ;
 scalar_t__ ZM_CH_G_14 ;
 scalar_t__ ZM_MODE_IBSS ;
 int ZM_RATE_SET_CCK ;
 int ZM_RATE_SET_OFDM ;
 int ZM_WIRELESS_MODE_24_54 ;
 int ZM_WIRELESS_MODE_24_N ;
 int ZM_WLAN_EID_EXTENDED_RATE ;
 int ZM_WLAN_EID_SUPPORT_RATE ;
 int ZM_WLAN_FRAME_TYPE_AUTH ;
 TYPE_3__* wd ;
 int zfHpSendBeacon (int *,int *,int) ;
 int zfMmAddExtendedHTCapability (int *,int *,int) ;
 int zfMmAddHTCapability (int *,int *,int) ;
 int zfMmAddIeDs (int *,int *,int) ;
 int zfMmAddIeErp (int *,int *,int) ;
 int zfMmAddIeSupportRate (int *,int *,int,int ,int ) ;
 int zfStaAddIbssAdditionalIE (int *,int *,int) ;
 int zfStaAddIeIbss (int *,int *,int) ;
 int zfStaAddIeSsid (int *,int *,int) ;
 int * zfwBufAllocate (int *,int) ;
 int zfwStaAddIeWpaRsn (int *,int *,int,int ) ;
 int zm_debug_msg0 (char*) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;
 int zmw_tx_buf_writeb (int *,int *,int ,int ) ;
 int zmw_tx_buf_writeh (int *,int *,int,int) ;

void zfStaSendBeacon(zdev_t* dev)
{
    zbuf_t* buf;
    u16_t offset, seq;

    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();




    if ((buf = zfwBufAllocate(dev, 1024)) == ((void*)0))
    {
        zm_debug_msg0("Allocate beacon buffer failed");
        return;
    }

    offset = 0;


    zmw_tx_buf_writeh(dev, buf, offset, 0x0080);
    offset+=2;

    zmw_tx_buf_writeh(dev, buf, offset, 0x0000);
    offset+=2;

    zmw_tx_buf_writeh(dev, buf, offset, 0xffff);
    offset+=2;
    zmw_tx_buf_writeh(dev, buf, offset, 0xffff);
    offset+=2;
    zmw_tx_buf_writeh(dev, buf, offset, 0xffff);
    offset+=2;

    zmw_tx_buf_writeh(dev, buf, offset, wd->macAddr[0]);
    offset+=2;
    zmw_tx_buf_writeh(dev, buf, offset, wd->macAddr[1]);
    offset+=2;
    zmw_tx_buf_writeh(dev, buf, offset, wd->macAddr[2]);
    offset+=2;

    zmw_tx_buf_writeh(dev, buf, offset, wd->sta.bssid[0]);
    offset+=2;
    zmw_tx_buf_writeh(dev, buf, offset, wd->sta.bssid[1]);
    offset+=2;
    zmw_tx_buf_writeh(dev, buf, offset, wd->sta.bssid[2]);
    offset+=2;


    zmw_enter_critical_section(dev);
    seq = ((wd->mmseq++)<<4);
    zmw_leave_critical_section(dev);
    zmw_tx_buf_writeh(dev, buf, offset, seq);
    offset+=2;


    offset+=8;


    zmw_tx_buf_writeh(dev, buf, offset, wd->beaconInterval);
    offset+=2;


    zmw_tx_buf_writeb(dev, buf, offset++, wd->sta.capability[0]);
    zmw_tx_buf_writeb(dev, buf, offset++, wd->sta.capability[1]);


    offset = zfStaAddIeSsid(dev, buf, offset);

    if(wd->frequency <= ZM_CH_G_14)
    {


     offset = zfMmAddIeSupportRate(dev, buf, offset,
                                    ZM_WLAN_EID_SUPPORT_RATE, ZM_RATE_SET_CCK);


     offset = zfMmAddIeDs(dev, buf, offset);

     offset = zfStaAddIeIbss(dev, buf, offset);

        if( wd->wfc.bIbssGMode
            && (wd->supportMode & (ZM_WIRELESS_MODE_24_54|ZM_WIRELESS_MODE_24_N)) )
        {

            wd->erpElement = 0;
            offset = zfMmAddIeErp(dev, buf, offset);
        }



        if ( wd->sta.authMode == ZM_AUTH_MODE_WPA2PSK )
        {
            offset = zfwStaAddIeWpaRsn(dev, buf, offset, ZM_WLAN_FRAME_TYPE_AUTH);
        }

        if( wd->wfc.bIbssGMode
            && (wd->supportMode & (ZM_WIRELESS_MODE_24_54|ZM_WIRELESS_MODE_24_N)) )
        {


            offset = zfMmAddIeSupportRate(dev, buf, offset,
                                         ZM_WLAN_EID_EXTENDED_RATE, ZM_RATE_SET_OFDM);
     }
    }
    else
    {

     offset = zfMmAddIeSupportRate(dev, buf, offset,
                                     ZM_WLAN_EID_SUPPORT_RATE, ZM_RATE_SET_OFDM);


     offset = zfMmAddIeDs(dev, buf, offset);

     offset = zfStaAddIeIbss(dev, buf, offset);



        if ( wd->sta.authMode == ZM_AUTH_MODE_WPA2PSK )
        {
            offset = zfwStaAddIeWpaRsn(dev, buf, offset, ZM_WLAN_FRAME_TYPE_AUTH);
        }
    }

    if ( wd->wlanMode != ZM_MODE_IBSS )
    {


        offset = zfMmAddHTCapability(dev, buf, offset);


        offset = zfMmAddExtendedHTCapability(dev, buf, offset);
    }

    if ( wd->sta.ibssAdditionalIESize )
        offset = zfStaAddIbssAdditionalIE(dev, buf, offset);



    zfHpSendBeacon(dev, buf, offset);



}
