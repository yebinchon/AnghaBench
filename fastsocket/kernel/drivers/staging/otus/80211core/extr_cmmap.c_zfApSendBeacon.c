
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u16_t ;
struct TYPE_3__ {scalar_t__ beaconCounter; scalar_t__ vapNumber; int* capab; scalar_t__* hideSsid; scalar_t__* wlanType; int* wpaSupport; int qosMode; } ;
struct TYPE_4__ {int* macAddr; int beaconInterval; int frequency; TYPE_1__ ap; int mmseq; } ;


 int ZM_LV_0 ;
 int ZM_LV_2 ;
 int ZM_RATE_SET_CCK ;
 int ZM_RATE_SET_OFDM ;
 int ZM_WLAN_EID_EXTENDED_RATE ;
 int ZM_WLAN_EID_SSID ;
 int ZM_WLAN_EID_SUPPORT_RATE ;
 scalar_t__ ZM_WLAN_TYPE_PURE_B ;
 TYPE_2__* wd ;
 int zfApAddIeSsid (int *,int *,int,int) ;
 int zfApAddIeTim (int *,int *,int,int) ;
 int zfApAddIeWmePara (int *,int *,int,int) ;
 int zfHpSendBeacon (int *,int *,int) ;
 int zfMmAddExtendedHTCapability (int *,int *,int) ;
 int zfMmAddHTCapability (int *,int *,int) ;
 int zfMmAddIeDs (int *,int *,int) ;
 int zfMmAddIeErp (int *,int *,int) ;
 int zfMmAddIeSupportRate (int *,int *,int,int ,int ) ;
 int zfMmAddIeWpa (int *,int *,int,int) ;
 int * zfwBufAllocate (int *,int) ;
 int zm_msg0_mm (int ,char*) ;
 int zm_msg1_mm (int ,char*,int) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;
 int zmw_tx_buf_writeb (int *,int *,int ,int ) ;
 int zmw_tx_buf_writeh (int *,int *,int,int) ;

void zfApSendBeacon(zdev_t* dev)
{
    zbuf_t* buf;
    u16_t offset;
    u16_t vap;
    u16_t seq;

    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    wd->ap.beaconCounter++;
    if (wd->ap.beaconCounter >= wd->ap.vapNumber)
    {
        wd->ap.beaconCounter = 0;
    }
    vap = wd->ap.beaconCounter;


    zm_msg1_mm(ZM_LV_2, "Send beacon, vap=", vap);


    if ((buf = zfwBufAllocate(dev, 1024)) == ((void*)0))
    {
        zm_msg0_mm(ZM_LV_0, "Alloc beacon buf Fail!");
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



    zmw_tx_buf_writeh(dev, buf, offset, (wd->macAddr[2]+(vap<<8)));

    offset+=2;

    zmw_tx_buf_writeh(dev, buf, offset, wd->macAddr[0]);
    offset+=2;
    zmw_tx_buf_writeh(dev, buf, offset, wd->macAddr[1]);
    offset+=2;



    zmw_tx_buf_writeh(dev, buf, offset, (wd->macAddr[2]+(vap<<8)));

    offset+=2;


    zmw_enter_critical_section(dev);
    seq = ((wd->mmseq++)<<4);
    zmw_leave_critical_section(dev);
    zmw_tx_buf_writeh(dev, buf, offset, seq);
    offset+=2;


    zmw_tx_buf_writeh(dev, buf, offset, 0);
    zmw_tx_buf_writeh(dev, buf, offset+2, 0);
    zmw_tx_buf_writeh(dev, buf, offset+4, 0);
    zmw_tx_buf_writeh(dev, buf, offset+6, 0);
    offset+=8;


    zmw_tx_buf_writeh(dev, buf, offset, wd->beaconInterval);
    offset+=2;


    zmw_tx_buf_writeh(dev, buf, offset, wd->ap.capab[vap]);
    offset+=2;


    if (wd->ap.hideSsid[vap] == 0)
    {
        offset = zfApAddIeSsid(dev, buf, offset, vap);
    }
    else
    {
        zmw_tx_buf_writeb(dev, buf, offset++, ZM_WLAN_EID_SSID);
        zmw_tx_buf_writeb(dev, buf, offset++, 0);

    }


    if ( wd->frequency < 3000 )
    {
    offset = zfMmAddIeSupportRate(dev, buf, offset,
                                  ZM_WLAN_EID_SUPPORT_RATE, ZM_RATE_SET_CCK);
    }
    else
    {
        offset = zfMmAddIeSupportRate(dev, buf, offset,
                                  ZM_WLAN_EID_SUPPORT_RATE, ZM_RATE_SET_OFDM);
    }


    offset = zfMmAddIeDs(dev, buf, offset);


    offset = zfApAddIeTim(dev, buf, offset, vap);


    if (wd->ap.wlanType[vap] != ZM_WLAN_TYPE_PURE_B)
    {
        if ( wd->frequency < 3000 )
        {

        offset = zfMmAddIeErp(dev, buf, offset);


        offset = zfMmAddIeSupportRate(dev, buf, offset,
                                      ZM_WLAN_EID_EXTENDED_RATE, ZM_RATE_SET_OFDM);
    }
    }



    if (wd->ap.wpaSupport[vap] == 1)
    {
        offset = zfMmAddIeWpa(dev, buf, offset, vap);
    }


    if (wd->ap.qosMode == 1)
    {
        offset = zfApAddIeWmePara(dev, buf, offset, vap);
    }


    offset = zfMmAddHTCapability(dev, buf, offset);


    offset = zfMmAddExtendedHTCapability(dev, buf, offset);



    zfHpSendBeacon(dev, buf, offset);







}
