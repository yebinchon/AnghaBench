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
typedef  int u8_t ;
typedef  int u16_t ;
struct zsMicVar {int /*<<< orphan*/  k1; int /*<<< orphan*/  k0; } ;
struct TYPE_3__ {scalar_t__ wmeConnected; } ;
struct TYPE_4__ {scalar_t__ wlanMode; TYPE_1__ sta; } ;

/* Variables and functions */
 int ZM_MIC_FAILURE ; 
 int ZM_MIC_SUCCESS ; 
 scalar_t__ ZM_MODE_AP ; 
 scalar_t__ ZM_MODE_INFRASTRUCTURE ; 
 int ZM_SIZE_OF_EXT_IV ; 
 int ZM_SIZE_OF_IV ; 
 int ZM_SIZE_OF_WLAN_DATA_HEADER ; 
 int /*<<< orphan*/  ZM_WLAN_HEADER_A1_OFFSET ; 
 int /*<<< orphan*/  ZM_WLAN_HEADER_A2_OFFSET ; 
 int /*<<< orphan*/  ZM_WLAN_HEADER_A3_OFFSET ; 
 TYPE_2__* wd ; 
 struct zsMicVar* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct zsMicVar*) ; 
 int /*<<< orphan*/  FUNC3 (struct zsMicVar*) ; 
 int /*<<< orphan*/  FUNC4 (int*,struct zsMicVar*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int,int) ; 
 struct zsMicVar* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

u8_t FUNC10(zdev_t* dev, zbuf_t* buf)
{
    struct zsMicVar*  pMicKey;
    struct zsMicVar    MyMicKey;
    u8_t   mic[8];
    u8_t   da[6];
    u8_t   sa[6];
    u8_t   bValue;
    u16_t  i, payloadOffset, tailOffset;

    FUNC8(dev);

    /* need not check MIC if pMicKEy is equal to NULL */
    if ( wd->wlanMode == ZM_MODE_AP )
    {
        pMicKey = FUNC0(dev, buf);

        if ( pMicKey != NULL )
        {
            FUNC1(dev, buf, sa, ZM_WLAN_HEADER_A2_OFFSET, 6);
            FUNC1(dev, buf, da, ZM_WLAN_HEADER_A3_OFFSET, 6);
        }
        else
        {
            return ZM_MIC_SUCCESS;
        }
    }
    else if ( wd->wlanMode == ZM_MODE_INFRASTRUCTURE )
    {
        pMicKey = FUNC6(dev, buf);

        if ( pMicKey != NULL )
        {
            FUNC1(dev, buf, sa, ZM_WLAN_HEADER_A3_OFFSET, 6);
            FUNC1(dev, buf, da, ZM_WLAN_HEADER_A1_OFFSET, 6);
        }
        else
        {
            return ZM_MIC_SUCCESS;
        }
    }
    else
    {
        return ZM_MIC_SUCCESS;
    }

    MyMicKey.k0=pMicKey->k0;
    MyMicKey.k1=pMicKey->k1;
    pMicKey = &MyMicKey;

    FUNC3(pMicKey);
    tailOffset = FUNC7(dev, buf);
    tailOffset -= 8;

    /* append DA */
    for(i=0; i<6; i++)
    {
        FUNC2(da[i], pMicKey);
    }
    /* append SA */
    for(i=0; i<6; i++)
    {
        FUNC2(sa[i], pMicKey);
    }

    /* append for alignment */
    if ((FUNC9(dev, buf, 0) & 0x80) != 0)
        FUNC2(FUNC9(dev, buf,24)&0x7, pMicKey);
    else
        FUNC2(0, pMicKey);
    FUNC2(0, pMicKey);
    FUNC2(0, pMicKey);
    FUNC2(0, pMicKey);

    /* append payload */
    payloadOffset = ZM_SIZE_OF_WLAN_DATA_HEADER +
                    ZM_SIZE_OF_IV +
                    ZM_SIZE_OF_EXT_IV;

    if ((FUNC9(dev, buf, 0) & 0x80) != 0)
    {
        /* Qos Packet, Plcpheader + 2 */
        if (wd->wlanMode == ZM_MODE_AP)
        {
            /* TODO : Rx Qos element offset in software MIC check */
        }
        else if (wd->wlanMode == ZM_MODE_INFRASTRUCTURE)
        {
            if (wd->sta.wmeConnected != 0)
            {
                payloadOffset += 2;
            }
        }
    }

    for(i=payloadOffset; i<tailOffset; i++)
    {
        bValue = FUNC9(dev, buf, i);
        FUNC2(bValue, pMicKey);
    }

    FUNC4(mic, pMicKey);

    if ( !FUNC5(dev, buf, mic, tailOffset, 8) )
    {
        return ZM_MIC_FAILURE;
    }

    return ZM_MIC_SUCCESS;
}