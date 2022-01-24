#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int /*<<< orphan*/  zbuf_t ;
typedef  int u16_t ;
struct TYPE_3__ {scalar_t__ beaconCounter; scalar_t__ vapNumber; int* capab; scalar_t__* hideSsid; scalar_t__* wlanType; int* wpaSupport; int qosMode; } ;
struct TYPE_4__ {int* macAddr; int beaconInterval; int frequency; TYPE_1__ ap; int /*<<< orphan*/  mmseq; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZM_LV_0 ; 
 int /*<<< orphan*/  ZM_LV_2 ; 
 int /*<<< orphan*/  ZM_RATE_SET_CCK ; 
 int /*<<< orphan*/  ZM_RATE_SET_OFDM ; 
 int /*<<< orphan*/  ZM_WLAN_EID_EXTENDED_RATE ; 
 int /*<<< orphan*/  ZM_WLAN_EID_SSID ; 
 int /*<<< orphan*/  ZM_WLAN_EID_SUPPORT_RATE ; 
 scalar_t__ ZM_WLAN_TYPE_PURE_B ; 
 TYPE_2__* wd ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 

void FUNC19(zdev_t* dev)
{
    zbuf_t* buf;
    u16_t offset;
    u16_t vap;
    u16_t seq;

    FUNC15(dev);

    FUNC13();

    wd->ap.beaconCounter++;
    if (wd->ap.beaconCounter >= wd->ap.vapNumber)
    {
        wd->ap.beaconCounter = 0;
    }
    vap = wd->ap.beaconCounter;


    FUNC12(ZM_LV_2, "Send beacon, vap=", vap);

    /* TBD : Maximum size of beacon */
    if ((buf = FUNC10(dev, 1024)) == NULL)
    {
        FUNC11(ZM_LV_0, "Alloc beacon buf Fail!");
        return;
    }

    offset = 0;

    /* wlan header */
    /* Frame control */
    FUNC18(dev, buf, offset, 0x0080);
    offset+=2;
    /* Duration */
    FUNC18(dev, buf, offset, 0x0000);
    offset+=2;
    /* Address 1 */
    FUNC18(dev, buf, offset, 0xffff);
    offset+=2;
    FUNC18(dev, buf, offset, 0xffff);
    offset+=2;
    FUNC18(dev, buf, offset, 0xffff);
    offset+=2;
    /* Address 2 */
    FUNC18(dev, buf, offset, wd->macAddr[0]);
    offset+=2;
    FUNC18(dev, buf, offset, wd->macAddr[1]);
    offset+=2;
#ifdef ZM_VAPMODE_MULTILE_SSID
    zmw_tx_buf_writeh(dev, buf, offset, wd->macAddr[2]); //Multiple SSID
#else
    FUNC18(dev, buf, offset, (wd->macAddr[2]+(vap<<8))); //VAP
#endif
    offset+=2;
    /* Address 3 */
    FUNC18(dev, buf, offset, wd->macAddr[0]);
    offset+=2;
    FUNC18(dev, buf, offset, wd->macAddr[1]);
    offset+=2;
#ifdef ZM_VAPMODE_MULTILE_SSID
    zmw_tx_buf_writeh(dev, buf, offset, wd->macAddr[2]); //Multiple SSID
#else
    FUNC18(dev, buf, offset, (wd->macAddr[2]+(vap<<8))); //VAP
#endif
    offset+=2;

    /* Sequence number */
    FUNC14(dev);
    seq = ((wd->mmseq++)<<4);
    FUNC16(dev);
    FUNC18(dev, buf, offset, seq);
    offset+=2;

    /* 24-31 Time Stamp : hardware will fill this field */
    FUNC18(dev, buf, offset, 0);
    FUNC18(dev, buf, offset+2, 0);
    FUNC18(dev, buf, offset+4, 0);
    FUNC18(dev, buf, offset+6, 0);
    offset+=8;

    /* Beacon Interval */
    FUNC18(dev, buf, offset, wd->beaconInterval);
    offset+=2;

    /* Capability */
    FUNC18(dev, buf, offset, wd->ap.capab[vap]);
    offset+=2;

    /* SSID */
    if (wd->ap.hideSsid[vap] == 0)
    {
        offset = FUNC0(dev, buf, offset, vap);
    }
    else
    {
        FUNC17(dev, buf, offset++, ZM_WLAN_EID_SSID);
        FUNC17(dev, buf, offset++, 0);

    }

    /* Support Rate */
    if ( wd->frequency < 3000 )
    {
    offset = FUNC8(dev, buf, offset,
                                  ZM_WLAN_EID_SUPPORT_RATE, ZM_RATE_SET_CCK);
    }
    else
    {
        offset = FUNC8(dev, buf, offset,
                                  ZM_WLAN_EID_SUPPORT_RATE, ZM_RATE_SET_OFDM);
    }

    /* DS parameter set */
    offset = FUNC6(dev, buf, offset);

    /* TIM */
    offset = FUNC1(dev, buf, offset, vap);

    /* If WLAN Type is not PURE B */
    if (wd->ap.wlanType[vap] != ZM_WLAN_TYPE_PURE_B)
    {
        if ( wd->frequency < 3000 )
        {
        /* ERP Information */
        offset = FUNC7(dev, buf, offset);

        /* Extended Supported Rates */
        offset = FUNC8(dev, buf, offset,
                                      ZM_WLAN_EID_EXTENDED_RATE, ZM_RATE_SET_OFDM);
    }
    }

    /* TODO : country information */
    /* TODO : RSN */
    if (wd->ap.wpaSupport[vap] == 1)
    {
        offset = FUNC9(dev, buf, offset, vap);
    }

    /* WME Parameters */
    if (wd->ap.qosMode == 1)
    {
        offset = FUNC2(dev, buf, offset, vap);
    }

    /* HT Capabilities Info */
    offset = FUNC5(dev, buf, offset);

    /* Extended HT Capabilities Info */
    offset = FUNC4(dev, buf, offset);

    /* 1212 : write to beacon fifo */
    /* 1221 : write to share memory */
    FUNC3(dev, buf, offset);

    /* Free beacon buffer */
    /* TODO: In order to fit the madwifi beacon architecture, we need to
       free beacon buffer in the HAL layer.
     */

    //zfwBufFree(dev, buf, 0);
}