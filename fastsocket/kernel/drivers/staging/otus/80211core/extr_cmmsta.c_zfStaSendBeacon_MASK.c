#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int /*<<< orphan*/  zbuf_t ;
typedef  int u16_t ;
struct TYPE_5__ {int* bssid; scalar_t__ authMode; scalar_t__ ibssAdditionalIESize; int /*<<< orphan*/ * capability; } ;
struct TYPE_4__ {scalar_t__ bIbssGMode; } ;
struct TYPE_6__ {int* macAddr; int beaconInterval; scalar_t__ frequency; int supportMode; scalar_t__ wlanMode; TYPE_2__ sta; TYPE_1__ wfc; scalar_t__ erpElement; int /*<<< orphan*/  mmseq; } ;

/* Variables and functions */
 scalar_t__ ZM_AUTH_MODE_WPA2PSK ; 
 scalar_t__ ZM_CH_G_14 ; 
 scalar_t__ ZM_MODE_IBSS ; 
 int /*<<< orphan*/  ZM_RATE_SET_CCK ; 
 int /*<<< orphan*/  ZM_RATE_SET_OFDM ; 
 int ZM_WIRELESS_MODE_24_54 ; 
 int ZM_WIRELESS_MODE_24_N ; 
 int /*<<< orphan*/  ZM_WLAN_EID_EXTENDED_RATE ; 
 int /*<<< orphan*/  ZM_WLAN_EID_SUPPORT_RATE ; 
 int /*<<< orphan*/  ZM_WLAN_FRAME_TYPE_AUTH ; 
 TYPE_3__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 

void FUNC18(zdev_t* dev)
{
    zbuf_t* buf;
    u16_t offset, seq;

    FUNC14(dev);

    FUNC12();

    //zm_debug_msg0("\n");

    /* TBD : Maximum size of beacon */
    if ((buf = FUNC9(dev, 1024)) == NULL)
    {
        FUNC11("Allocate beacon buffer failed");
        return;
    }

    offset = 0;
    /* wlan header */
    /* Frame control */
    FUNC17(dev, buf, offset, 0x0080);
    offset+=2;
    /* Duration */
    FUNC17(dev, buf, offset, 0x0000);
    offset+=2;
    /* Address 1 */
    FUNC17(dev, buf, offset, 0xffff);
    offset+=2;
    FUNC17(dev, buf, offset, 0xffff);
    offset+=2;
    FUNC17(dev, buf, offset, 0xffff);
    offset+=2;
    /* Address 2 */
    FUNC17(dev, buf, offset, wd->macAddr[0]);
    offset+=2;
    FUNC17(dev, buf, offset, wd->macAddr[1]);
    offset+=2;
    FUNC17(dev, buf, offset, wd->macAddr[2]);
    offset+=2;
    /* Address 3 */
    FUNC17(dev, buf, offset, wd->sta.bssid[0]);
    offset+=2;
    FUNC17(dev, buf, offset, wd->sta.bssid[1]);
    offset+=2;
    FUNC17(dev, buf, offset, wd->sta.bssid[2]);
    offset+=2;

    /* Sequence number */
    FUNC13(dev);
    seq = ((wd->mmseq++)<<4);
    FUNC15(dev);
    FUNC17(dev, buf, offset, seq);
    offset+=2;

    /* 24-31 Time Stamp : hardware will fill this field */
    offset+=8;

    /* Beacon Interval */
    FUNC17(dev, buf, offset, wd->beaconInterval);
    offset+=2;

    /* Capability */
    FUNC16(dev, buf, offset++, wd->sta.capability[0]);
    FUNC16(dev, buf, offset++, wd->sta.capability[1]);

    /* SSID */
    offset = FUNC8(dev, buf, offset);

    if(wd->frequency <= ZM_CH_G_14)  // 2.4 GHz  b+g
    {

    	/* Support Rate */
    	offset = FUNC5(dev, buf, offset,
                                  		ZM_WLAN_EID_SUPPORT_RATE, ZM_RATE_SET_CCK);

    	/* DS parameter set */
    	offset = FUNC3(dev, buf, offset);

    	offset = FUNC7(dev, buf, offset);

        if( wd->wfc.bIbssGMode
            && (wd->supportMode & (ZM_WIRELESS_MODE_24_54|ZM_WIRELESS_MODE_24_N)) )    // Only accompany with enabling a mode .
        {
      	    /* ERP Information */
       	    wd->erpElement = 0;
       	    offset = FUNC4(dev, buf, offset);
       	}

       	/* TODO : country information */
        /* RSN */
        if ( wd->sta.authMode == ZM_AUTH_MODE_WPA2PSK )
        {
            offset = FUNC10(dev, buf, offset, ZM_WLAN_FRAME_TYPE_AUTH);
        }

        if( wd->wfc.bIbssGMode
            && (wd->supportMode & (ZM_WIRELESS_MODE_24_54|ZM_WIRELESS_MODE_24_N)) )    // Only accompany with enabling a mode .
        {
            /* Enable G Mode */
            /* Extended Supported Rates */
       	    offset = FUNC5(dev, buf, offset,
                                   		    ZM_WLAN_EID_EXTENDED_RATE, ZM_RATE_SET_OFDM);
	    }
    }
    else    // 5GHz a
    {
        /* Support Rate a Mode */
    	offset = FUNC5(dev, buf, offset,
        	                            ZM_WLAN_EID_SUPPORT_RATE, ZM_RATE_SET_OFDM);

        /* DS parameter set */
    	offset = FUNC3(dev, buf, offset);

    	offset = FUNC7(dev, buf, offset);

        /* TODO : country information */
        /* RSN */
        if ( wd->sta.authMode == ZM_AUTH_MODE_WPA2PSK )
        {
            offset = FUNC10(dev, buf, offset, ZM_WLAN_FRAME_TYPE_AUTH);
        }
    }

    if ( wd->wlanMode != ZM_MODE_IBSS )
    {
        /* TODO : Need to check if it is ok */
        /* HT Capabilities Info */
        offset = FUNC2(dev, buf, offset);

        /* Extended HT Capabilities Info */
        offset = FUNC1(dev, buf, offset);
    }

    if ( wd->sta.ibssAdditionalIESize )
        offset = FUNC6(dev, buf, offset);

    /* 1212 : write to beacon fifo */
    /* 1221 : write to share memory */
    FUNC0(dev, buf, offset);

    /* Free beacon buffer */
    //zfwBufFree(dev, buf, 0);
}