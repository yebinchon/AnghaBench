#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int /*<<< orphan*/  zbuf_t ;
typedef  int u8_t ;
typedef  int u32_t ;
typedef  int u16_t ;
struct TYPE_7__ {int currentFrequency; int connection_11b; int EnableHT; int /*<<< orphan*/  SG40; TYPE_2__* oppositeInfo; } ;
struct TYPE_5__ {scalar_t__ bIbssGMode; } ;
struct TYPE_8__ {int supportMode; scalar_t__ wlanMode; TYPE_3__ sta; TYPE_1__ wfc; } ;
struct TYPE_6__ {int* macAddr; int /*<<< orphan*/  rcCell; } ;

/* Variables and functions */
 int ZM_HP_CAP_11N_ONE_TX_STREAM ; 
 scalar_t__ ZM_MODE_IBSS ; 
 int ZM_WIRELESS_MODE_24_54 ; 
 int ZM_WIRELESS_MODE_24_N ; 
 int /*<<< orphan*/  ZM_WLAN_EID_EXTENDED_RATE ; 
 scalar_t__ ZM_WLAN_HEADER_A2_OFFSET ; 
 TYPE_4__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,scalar_t__,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 

int FUNC12(zdev_t* dev, zbuf_t* buf)
{
    int   i;
    u8_t*  dst;
    u16_t  sa[3];
    int res = 0;
    u16_t  offset;
    u8_t   bSupportExtRate;
    u32_t rtsctsRate = 0xffffffff; /* CTS:OFDM 6M, RTS:OFDM 6M */
    u32_t oneTxStreamCap;

    FUNC9(dev);
    FUNC7();

    sa[0] = FUNC11(dev, buf, ZM_WLAN_HEADER_A2_OFFSET);
    sa[1] = FUNC11(dev, buf, ZM_WLAN_HEADER_A2_OFFSET+2);
    sa[2] = FUNC11(dev, buf, ZM_WLAN_HEADER_A2_OFFSET+4);

    FUNC8(dev);

    res = FUNC5(dev, sa, &i);
    if ( res != 0 )
    {
        goto zlReturn;
    }

    dst = wd->sta.oppositeInfo[i].macAddr;
    FUNC0(dev, buf, dst, ZM_WLAN_HEADER_A2_OFFSET, 6);

    if ( (wd->sta.currentFrequency < 3000) && !(wd->supportMode & (ZM_WIRELESS_MODE_24_54|ZM_WIRELESS_MODE_24_N)) )
    {
        bSupportExtRate = 0;
    } else {
        bSupportExtRate = 1;
    }

    if ( (bSupportExtRate == 1)
         && (wd->sta.currentFrequency < 3000)
         && (wd->wlanMode == ZM_MODE_IBSS)
         && (wd->wfc.bIbssGMode == 0) )
    {
        bSupportExtRate = 0;
    }

    wd->sta.connection_11b = 0;
    oneTxStreamCap = (FUNC2(dev) & ZM_HP_CAP_11N_ONE_TX_STREAM);

    if ( ((offset = FUNC1(dev, buf, ZM_WLAN_EID_EXTENDED_RATE)) != 0xffff)
         && (bSupportExtRate == 1) )
    {
        /* TODO : Handle 11n */
        if (wd->sta.currentFrequency < 3000)
        {
            /* 2.4GHz */
            if (wd->sta.EnableHT == 1)
            {
                //11ng
                FUNC4(dev, &wd->sta.oppositeInfo[i].rcCell, (oneTxStreamCap!=0)?3:2, 1, wd->sta.SG40);
            }
            else
            {
                //11g
                FUNC4(dev, &wd->sta.oppositeInfo[i].rcCell, 1, 1, wd->sta.SG40);
            }
            rtsctsRate = 0x00001bb; /* CTS:CCK 1M, RTS:OFDM 6M */
        }
        else
        {
            /* 5GHz */
            if (wd->sta.EnableHT == 1)
            {
                //11na
                FUNC4(dev, &wd->sta.oppositeInfo[i].rcCell, (oneTxStreamCap!=0)?3:2, 0, wd->sta.SG40);
            }
            else
            {
                //11a
                FUNC4(dev, &wd->sta.oppositeInfo[i].rcCell, 1, 0, wd->sta.SG40);
            }
            rtsctsRate = 0x10b01bb; /* CTS:OFDM 6M, RTS:OFDM 6M */
        }
    }
    else
    {
        /* TODO : Handle 11n */
        if (wd->sta.currentFrequency < 3000)
        {
            /* 2.4GHz */
            if (wd->sta.EnableHT == 1)
            {
                //11ng
                FUNC4(dev, &wd->sta.oppositeInfo[i].rcCell, (oneTxStreamCap!=0)?3:2, 1, wd->sta.SG40);
                rtsctsRate = 0x00001bb; /* CTS:CCK 1M, RTS:OFDM 6M */
            }
            else
            {
                //11b
                FUNC4(dev, &wd->sta.oppositeInfo[i].rcCell, 0, 1, wd->sta.SG40);
                rtsctsRate = 0x0; /* CTS:CCK 1M, RTS:CCK 1M */
                wd->sta.connection_11b = 1;
            }
        }
        else
        {
            /* 5GHz */
            if (wd->sta.EnableHT == 1)
            {
                //11na
                FUNC4(dev, &wd->sta.oppositeInfo[i].rcCell, (oneTxStreamCap!=0)?3:2, 0, wd->sta.SG40);
            }
            else
            {
                //11a
                FUNC4(dev, &wd->sta.oppositeInfo[i].rcCell, 1, 0, wd->sta.SG40);
            }
            rtsctsRate = 0x10b01bb; /* CTS:OFDM 6M, RTS:OFDM 6M */
        }
    }

    FUNC6(dev, i);

zlReturn:
    FUNC10(dev);

    if (rtsctsRate != 0xffffffff)
    {
        FUNC3(dev, rtsctsRate);
    }
    return res;
}