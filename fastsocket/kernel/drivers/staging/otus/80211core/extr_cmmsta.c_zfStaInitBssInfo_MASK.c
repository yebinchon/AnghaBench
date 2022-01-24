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
typedef  int u16_t ;
struct zsWlanProbeRspFrameHeader {int* capability; int /*<<< orphan*/ * beaconInterval; int /*<<< orphan*/ * timeStamp; int /*<<< orphan*/ * bssid; int /*<<< orphan*/ * sa; } ;
struct zsBssInfo {int flag; scalar_t__* ssid; int frequency; int channel; int* capability; int frameBodysize; scalar_t__* frameBody; scalar_t__* supportedRates; scalar_t__* countryInfo; int erp; scalar_t__* extSupportedRates; scalar_t__* wpaIe; scalar_t__* wscIe; scalar_t__* rsnIe; scalar_t__* cencIe; int wmeSupport; int EnableHT; int enableHT40; int SG40; int extChOffset; int athOwlAp; int broadcomHTAp; int marvelAp; int signalStrength; int signalQuality; int /*<<< orphan*/  sortValue; int /*<<< orphan*/  tick; int /*<<< orphan*/  apCap; int /*<<< orphan*/  atimWindow; void* securityType; int /*<<< orphan*/ * beaconInterval; int /*<<< orphan*/ * timeStamp; int /*<<< orphan*/ * bssid; int /*<<< orphan*/ * macaddr; } ;
struct TYPE_6__ {int SignalStrength1; } ;
struct TYPE_7__ {TYPE_2__ Data; } ;
struct zsAdditionInfo {TYPE_3__ Tail; } ;
typedef  scalar_t__ s8_t ;
struct TYPE_5__ {int currentFrequency; scalar_t__ b802_11D; } ;
struct TYPE_8__ {int supportMode; int /*<<< orphan*/  tick; TYPE_1__ sta; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZM_All11N_AP ; 
 int ZM_BSS_INFO_VALID_BIT ; 
 int /*<<< orphan*/  ZM_LV_0 ; 
 int /*<<< orphan*/  ZM_LV_1 ; 
 int ZM_MAX_COUNTRY_INFO_SIZE ; 
 int ZM_MAX_IE_SIZE ; 
 int ZM_MAX_PROBE_FRAME_BODY_SIZE ; 
 int ZM_MAX_SSID_LENGTH ; 
 int ZM_MAX_SUPP_RATES_IE_SIZE ; 
 int ZM_MAX_WPS_IE_SIZE ; 
 void* ZM_SECURITY_TYPE_CENC ; 
 void* ZM_SECURITY_TYPE_NONE ; 
 void* ZM_SECURITY_TYPE_WPA ; 
 int /*<<< orphan*/  ZM_SuperG_AP ; 
 int ZM_WIRELESS_MODE_24_11 ; 
 int ZM_WIRELESS_MODE_24_54 ; 
 int ZM_WIRELESS_MODE_24_N ; 
 int ZM_WIRELESS_MODE_5_54 ; 
 int ZM_WIRELESS_MODE_5_N ; 
 int /*<<< orphan*/  ZM_WLAN_EID_CENC_IE ; 
 int /*<<< orphan*/  ZM_WLAN_EID_COUNTRY ; 
 int /*<<< orphan*/  ZM_WLAN_EID_DS ; 
 int /*<<< orphan*/  ZM_WLAN_EID_ERP ; 
 int /*<<< orphan*/  ZM_WLAN_EID_EXTENDED_HT_CAPABILITY ; 
 int /*<<< orphan*/  ZM_WLAN_EID_EXTENDED_RATE ; 
 int /*<<< orphan*/  ZM_WLAN_EID_HT_CAPABILITY ; 
 int /*<<< orphan*/  ZM_WLAN_EID_IBSS ; 
 int /*<<< orphan*/  ZM_WLAN_EID_RSN_IE ; 
 int /*<<< orphan*/  ZM_WLAN_EID_SSID ; 
 int /*<<< orphan*/  ZM_WLAN_EID_SUPPORT_RATE ; 
 int /*<<< orphan*/  ZM_WLAN_EID_VENDOR_PRIVATE ; 
 int /*<<< orphan*/  ZM_WLAN_EID_WPA_IE ; 
 int /*<<< orphan*/  ZM_WLAN_PREN2_EID_HTCAPABILITY ; 
 int /*<<< orphan*/  ZM_WLAN_PREN2_EID_HTINFORMATION ; 
 int /*<<< orphan*/  ZM_XR_AP ; 
 TYPE_4__* wd ; 
 int FUNC0 (int,int*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int*,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int,scalar_t__*) ; 
 void* FUNC15 (int /*<<< orphan*/ *,scalar_t__*,int,int /*<<< orphan*/ ) ; 
 void* FUNC16 (int /*<<< orphan*/ *,scalar_t__*,int,scalar_t__*) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

u8_t FUNC24(zdev_t* dev, zbuf_t* buf,
        struct zsWlanProbeRspFrameHeader *pProbeRspHeader,
        struct zsBssInfo* pBssInfo, struct zsAdditionInfo* AddInfo, u8_t type)
{
    u8_t    length, channel, is5G;
    u16_t   i, offset;
    u8_t    apQosInfo;
    u16_t    eachIElength = 0;
    u16_t   accumulateLen = 0;

    FUNC21(dev);

    if ((type == 1) && ((pBssInfo->flag & ZM_BSS_INFO_VALID_BIT) != 0))
    {
        goto zlUpdateRssi;
    }

    /* get SSID */
    if ( (offset = FUNC6(dev, buf, ZM_WLAN_EID_SSID)) == 0xffff )
    {
        FUNC19("EID(SSID) not found");
        goto zlError;
    }

    length = FUNC22(dev, buf, offset+1);

	{
		u8_t Show_Flag = 0;
		FUNC18(dev, &Show_Flag);

		if(Show_Flag)
		{
			if (length > ZM_MAX_SSID_LENGTH )
			{
				FUNC19("EID(SSID) is invalid");
				goto zlError;
			}
		}
		else
		{
    if ( length == 0 || length > ZM_MAX_SSID_LENGTH )
    {
        FUNC19("EID(SSID) is invalid");
        goto zlError;
    }

		}
	}
    FUNC3(dev, buf, pBssInfo->ssid, offset, length+2);

    /* get DS parameter */
    if ( (offset = FUNC6(dev, buf, ZM_WLAN_EID_DS)) != 0xffff )
    {
        length = FUNC22(dev, buf, offset+1);
        if ( length != 1 )
        {
            FUNC20(ZM_LV_0, "Abnormal DS Param Set IE");
            goto zlError;
        }
        channel = FUNC22(dev, buf, offset+2);

        if (FUNC13(dev, FUNC1(dev, channel, 0)) == 0)
        {
            goto zlError2;
        }

        pBssInfo->frequency = FUNC1(dev, channel, 0); // auto check
        pBssInfo->channel = channel;


    }
    else
    {
        /* DS parameter not found */
        pBssInfo->frequency = wd->sta.currentFrequency;
        pBssInfo->channel = FUNC0(wd->sta.currentFrequency, &is5G);
    }

    /* initialize security type */
    pBssInfo->securityType = ZM_SECURITY_TYPE_NONE;

    /* get macaddr */
    for( i=0; i<6; i++ )
    {
        pBssInfo->macaddr[i] = pProbeRspHeader->sa[i];
    }

    /* get bssid */
    for( i=0; i<6; i++ )
    {
        pBssInfo->bssid[i] = pProbeRspHeader->bssid[i];
    }

    /* get timestamp */
    for( i=0; i<8; i++ )
    {
        pBssInfo->timeStamp[i] = pProbeRspHeader->timeStamp[i];
    }

    /* get beacon interval */
    pBssInfo->beaconInterval[0] = pProbeRspHeader->beaconInterval[0];
    pBssInfo->beaconInterval[1] = pProbeRspHeader->beaconInterval[1];

    /* get capability */
    pBssInfo->capability[0] = pProbeRspHeader->capability[0];
    pBssInfo->capability[1] = pProbeRspHeader->capability[1];

    /* Copy frame body */
    offset = 36;            // Copy from the start of variable IE
    pBssInfo->frameBodysize = FUNC17(dev, buf)-offset;
    if (pBssInfo->frameBodysize > (ZM_MAX_PROBE_FRAME_BODY_SIZE-1))
    {
        pBssInfo->frameBodysize = ZM_MAX_PROBE_FRAME_BODY_SIZE-1;
    }
    accumulateLen = 0;
    do
    {
        eachIElength = FUNC22(dev, buf, offset + accumulateLen+1) + 2;  //Len+(EID+Data)

        if ( (eachIElength >= 2)
             && ((accumulateLen + eachIElength) <= pBssInfo->frameBodysize) )
        {
            FUNC3(dev, buf, pBssInfo->frameBody+accumulateLen, offset+accumulateLen, eachIElength);
            accumulateLen+=(u16_t)eachIElength;
        }
        else
        {
            FUNC20(ZM_LV_1, "probersp frameBodysize abnormal");
            break;
        }
    }
    while(accumulateLen < pBssInfo->frameBodysize);
    pBssInfo->frameBodysize = accumulateLen;

    /* get supported rates */
    if ( (offset = FUNC6(dev, buf, ZM_WLAN_EID_SUPPORT_RATE)) == 0xffff )
    {
        FUNC19("EID(supported rates) not found");
        goto zlError;
    }

    length = FUNC22(dev, buf, offset+1);
    if ( length == 0 || length > ZM_MAX_SUPP_RATES_IE_SIZE)
    {
        FUNC20(ZM_LV_0, "Supported rates IE length abnormal");
        goto zlError;
    }
    FUNC3(dev, buf, pBssInfo->supportedRates, offset, length+2);



    /* get Country information */
    if ( (offset = FUNC6(dev, buf, ZM_WLAN_EID_COUNTRY)) != 0xffff )
    {
        length = FUNC22(dev, buf, offset+1);
        if (length > ZM_MAX_COUNTRY_INFO_SIZE)
        {
            length = ZM_MAX_COUNTRY_INFO_SIZE;
        }
        FUNC3(dev, buf, pBssInfo->countryInfo, offset, length+2);
        /* check 802.11d support data */
        if (wd->sta.b802_11D)
        {
            FUNC12(dev, (u8_t *)&pBssInfo->countryInfo, 3);
            /* only set regulatory one time */
            wd->sta.b802_11D = 0;
        }
    }

    /* get ERP information */
    if ( (offset = FUNC6(dev, buf, ZM_WLAN_EID_ERP)) != 0xffff )
    {
        pBssInfo->erp = FUNC22(dev, buf, offset+2);
    }

    /* get extended supported rates */
    if ( (offset = FUNC6(dev, buf, ZM_WLAN_EID_EXTENDED_RATE)) != 0xffff )
    {
        length = FUNC22(dev, buf, offset+1);
        if (length > ZM_MAX_SUPP_RATES_IE_SIZE)
        {
            FUNC20(ZM_LV_0, "Extended rates IE length abnormal");
            goto zlError;
        }
        FUNC3(dev, buf, pBssInfo->extSupportedRates, offset, length+2);
    }
    else
    {
        pBssInfo->extSupportedRates[0] = 0;
        pBssInfo->extSupportedRates[1] = 0;
    }

    /* get WPA IE */
    if ( (offset = FUNC6(dev, buf, ZM_WLAN_EID_WPA_IE)) != 0xffff )
    {
        length = FUNC22(dev, buf, offset+1);
        if (length > ZM_MAX_IE_SIZE)
        {
            length = ZM_MAX_IE_SIZE;
        }
        FUNC3(dev, buf, pBssInfo->wpaIe, offset, length+2);
        pBssInfo->securityType = ZM_SECURITY_TYPE_WPA;
    }
    else
    {
        pBssInfo->wpaIe[1] = 0;
    }

    /* get WPS IE */
    if ((offset = FUNC9(dev, buf, 4, 0xff)) != 0xffff)
    {
        length = FUNC22(dev, buf, offset+1);
        if (length > ZM_MAX_WPS_IE_SIZE )
        {
            length = ZM_MAX_WPS_IE_SIZE;
        }
        FUNC3(dev, buf, pBssInfo->wscIe, offset, length+2);
    }
    else
    {
        pBssInfo->wscIe[1] = 0;
    }

    /* get SuperG IE */
    if ((offset = FUNC8(dev, buf, ZM_WLAN_EID_VENDOR_PRIVATE)) != 0xffff)
    {
        pBssInfo->apCap |= ZM_SuperG_AP;
    }

    /* get XR IE */
    if ((offset = FUNC10(dev, buf, ZM_WLAN_EID_VENDOR_PRIVATE)) != 0xffff)
    {
        pBssInfo->apCap |= ZM_XR_AP;
    }

    /* get RSN IE */
    if ( (offset = FUNC6(dev, buf, ZM_WLAN_EID_RSN_IE)) != 0xffff )
    {
        length = FUNC22(dev, buf, offset+1);
        if (length > ZM_MAX_IE_SIZE)
        {
            length = ZM_MAX_IE_SIZE;
        }
        FUNC3(dev, buf, pBssInfo->rsnIe, offset, length+2);
        pBssInfo->securityType = ZM_SECURITY_TYPE_WPA;
    }
    else
    {
        pBssInfo->rsnIe[1] = 0;
    }
#ifdef ZM_ENABLE_CENC
    /* get CENC IE */
    if ( (offset = zfFindElement(dev, buf, ZM_WLAN_EID_CENC_IE)) != 0xffff )
    {
        length = zmw_rx_buf_readb(dev, buf, offset+1);
        if (length > ZM_MAX_IE_SIZE )
        {
            length = ZM_MAX_IE_SIZE;
        }
        zfCopyFromRxBuffer(dev, buf, pBssInfo->cencIe, offset, length+2);
        pBssInfo->securityType = ZM_SECURITY_TYPE_CENC;
        pBssInfo->capability[0] &= 0xffef;
    }
    else
    {
        pBssInfo->cencIe[1] = 0;
    }
#endif //ZM_ENABLE_CENC
    /* get WME Parameter IE, probe rsp may contain WME parameter element */
    //if ( wd->bQoSEnable )
    {
        if ((offset = FUNC9(dev, buf, 2, 1)) != 0xffff)
        {
            apQosInfo = FUNC22(dev, buf, offset+8) & 0x80;
            pBssInfo->wmeSupport = 1 | apQosInfo;
        }
        else if ((offset = FUNC9(dev, buf, 2, 0)) != 0xffff)
        {
            apQosInfo = FUNC22(dev, buf, offset+8) & 0x80;
            pBssInfo->wmeSupport = 1  | apQosInfo;
        }
        else
        {
            pBssInfo->wmeSupport = 0;
        }
    }
    //CWYang(+)
    if ((offset = FUNC6(dev, buf, ZM_WLAN_EID_HT_CAPABILITY)) != 0xffff)
    {
        /* 11n AP */
        pBssInfo->EnableHT = 1;
        if (FUNC22(dev, buf, offset+1) & 0x02)
        {
            pBssInfo->enableHT40 = 1;
        }
        else
        {
            pBssInfo->enableHT40 = 0;
        }

        if (FUNC22(dev, buf, offset+1) & 0x40)
        {
            pBssInfo->SG40 = 1;
        }
        else
        {
            pBssInfo->SG40 = 0;
        }
    }
    else if ((offset = FUNC6(dev, buf, ZM_WLAN_PREN2_EID_HTCAPABILITY)) != 0xffff)
    {
        /* 11n AP */
        pBssInfo->EnableHT = 1;
        pBssInfo->apCap |= ZM_All11N_AP;
        if (FUNC22(dev, buf, offset+2) & 0x02)
        {
            pBssInfo->enableHT40 = 1;
        }
        else
        {
            pBssInfo->enableHT40 = 0;
        }

        if (FUNC22(dev, buf, offset+2) & 0x40)
        {
            pBssInfo->SG40 = 1;
        }
        else
        {
            pBssInfo->SG40 = 0;
        }
    }
    else
    {
        pBssInfo->EnableHT = 0;
    }
    /* HT information */
    if ((offset = FUNC6(dev, buf, ZM_WLAN_EID_EXTENDED_HT_CAPABILITY)) != 0xffff)
    {
        /* atheros pre n */
        pBssInfo->extChOffset = FUNC22(dev, buf, offset+2) & 0x03;
    }
    else if ((offset = FUNC6(dev, buf, ZM_WLAN_PREN2_EID_HTINFORMATION)) != 0xffff)
    {
        /* pre n 2.0 standard */
        pBssInfo->extChOffset = FUNC22(dev, buf, offset+3) & 0x03;
    }
    else
    {
        pBssInfo->extChOffset = 0;
    }

    if ( (pBssInfo->enableHT40 == 1)
         && ((pBssInfo->extChOffset != 1) && (pBssInfo->extChOffset != 3)) )
    {
        pBssInfo->enableHT40 = 0;
    }

    if (pBssInfo->enableHT40 == 1)
    {
        if (FUNC13(dev, pBssInfo->frequency+((pBssInfo->extChOffset==1)?20:-20)) == 0)
        {
            /* if extension channel is not an allowed channel, treat AP as non-HT mode */
            pBssInfo->EnableHT = 0;
            pBssInfo->enableHT40 = 0;
            pBssInfo->extChOffset = 0;
        }
    }

    /* get ATH Extended Capability */
    if ( ((offset = FUNC6(dev, buf, ZM_WLAN_EID_EXTENDED_HT_CAPABILITY)) != 0xffff)&&
        ((offset = FUNC4(dev, buf)) == 0xffff))

    {
        pBssInfo->athOwlAp = 1;
    }
    else
    {
        pBssInfo->athOwlAp = 0;
    }

    /* get Broadcom Extended Capability */
    if ( (pBssInfo->EnableHT == 1) //((offset = zfFindElement(dev, buf, ZM_WLAN_EID_EXTENDED_HT_CAPABILITY)) != 0xffff)
         && ((offset = FUNC5(dev, buf)) != 0xffff) )
    {
        pBssInfo->broadcomHTAp = 1;
    }
    else
    {
        pBssInfo->broadcomHTAp = 0;
    }

    /* get Marvel Extended Capability */
    if ((offset = FUNC7(dev, buf)) != 0xffff)
    {
        pBssInfo->marvelAp = 1;
    }
    else
    {
        pBssInfo->marvelAp = 0;
    }

    /* get ATIM window */
    if ( (offset = FUNC6(dev, buf, ZM_WLAN_EID_IBSS)) != 0xffff )
    {
        pBssInfo->atimWindow = FUNC23(dev, buf,offset+2);
    }

    /* Fit for support mode */
    if (pBssInfo->frequency > 3000) {
        if (wd->supportMode & ZM_WIRELESS_MODE_5_N) {
#if 0
            if (wd->supportMode & ZM_WIRELESS_MODE_5_54) {
                /* support mode: a, n */
                /* do nothing */
            } else {
                /* support mode: n */
                /* reject non-n bss info */
                if (!pBssInfo->EnableHT) {
                    goto zlError2;
                }
            }
#endif
        } else {
            if (wd->supportMode & ZM_WIRELESS_MODE_5_54) {
                /* support mode: a */
                /* delete n mode information */
                pBssInfo->EnableHT = 0;
                pBssInfo->enableHT40 = 0;
                pBssInfo->apCap &= (~ZM_All11N_AP);
                pBssInfo->extChOffset = 0;
                pBssInfo->frameBodysize = FUNC15(dev, pBssInfo->frameBody,
                            pBssInfo->frameBodysize, ZM_WLAN_EID_HT_CAPABILITY);
                pBssInfo->frameBodysize = FUNC15(dev, pBssInfo->frameBody,
                            pBssInfo->frameBodysize, ZM_WLAN_PREN2_EID_HTCAPABILITY);
                pBssInfo->frameBodysize = FUNC15(dev, pBssInfo->frameBody,
                            pBssInfo->frameBodysize, ZM_WLAN_EID_EXTENDED_HT_CAPABILITY);
                pBssInfo->frameBodysize = FUNC15(dev, pBssInfo->frameBody,
                            pBssInfo->frameBodysize, ZM_WLAN_PREN2_EID_HTINFORMATION);
            } else {
                /* support mode: none */
                goto zlError2;
            }
        }
    } else {
        if (wd->supportMode & ZM_WIRELESS_MODE_24_N) {
#if 0
            if (wd->supportMode & ZM_WIRELESS_MODE_24_54) {
                if (wd->supportMode & ZM_WIRELESS_MODE_24_11) {
                    /* support mode: b, g, n */
                    /* do nothing */
                } else {
                    /* support mode: g, n */
                    /* reject b-only bss info */
                    if ( (!pBssInfo->EnableHT)
                         && (pBssInfo->extSupportedRates[1] == 0) ) {
                         goto zlError2;
                    }
                }
            } else {
                if (wd->supportMode & ZM_WIRELESS_MODE_24_11) {
                    /* support mode: b, n */
                    /* 1. reject g-only bss info
                     * 2. if non g-only, delete g mode information
                     */
                    if ( !pBssInfo->EnableHT ) {
                        if ( zfIsGOnlyMode(dev, pBssInfo->frequency, pBssInfo->supportedRates)
                             || zfIsGOnlyMode(dev, pBssInfo->frequency, pBssInfo->extSupportedRates) ) {
                            goto zlError2;
                        } else {
                            zfGatherBMode(dev, pBssInfo->supportedRates,
                                          pBssInfo->extSupportedRates);
                            pBssInfo->erp = 0;

                            pBssInfo->frameBodysize = zfRemoveElement(dev,
                                pBssInfo->frameBody, pBssInfo->frameBodysize,
                                ZM_WLAN_EID_ERP);
                            pBssInfo->frameBodysize = zfRemoveElement(dev,
                                pBssInfo->frameBody, pBssInfo->frameBodysize,
                                ZM_WLAN_EID_EXTENDED_RATE);

                            pBssInfo->frameBodysize = zfUpdateElement(dev,
                                pBssInfo->frameBody, pBssInfo->frameBodysize,
                                pBssInfo->supportedRates);
                        }
                    }
                } else {
                    /* support mode: n */
                    /* reject non-n bss info */
                    if (!pBssInfo->EnableHT) {
                        goto zlError2;
                    }
                }
            }
#endif
        } else {
            /* delete n mode information */
            pBssInfo->EnableHT = 0;
            pBssInfo->enableHT40 = 0;
            pBssInfo->apCap &= (~ZM_All11N_AP);
            pBssInfo->extChOffset = 0;
            pBssInfo->frameBodysize = FUNC15(dev, pBssInfo->frameBody,
                        pBssInfo->frameBodysize, ZM_WLAN_EID_HT_CAPABILITY);
            pBssInfo->frameBodysize = FUNC15(dev, pBssInfo->frameBody,
                        pBssInfo->frameBodysize, ZM_WLAN_PREN2_EID_HTCAPABILITY);
            pBssInfo->frameBodysize = FUNC15(dev, pBssInfo->frameBody,
                        pBssInfo->frameBodysize, ZM_WLAN_EID_EXTENDED_HT_CAPABILITY);
            pBssInfo->frameBodysize = FUNC15(dev, pBssInfo->frameBody,
                        pBssInfo->frameBodysize, ZM_WLAN_PREN2_EID_HTINFORMATION);

            if (wd->supportMode & ZM_WIRELESS_MODE_24_54) {
#if 0
                if (wd->supportMode & ZM_WIRELESS_MODE_24_11) {
                    /* support mode: b, g */
                    /* delete n mode information */
                } else {
                    /* support mode: g */
                    /* delete n mode information */
                    /* reject b-only bss info */
                    if (pBssInfo->extSupportedRates[1] == 0) {
                         goto zlError2;
                    }
                }
#endif
            } else {
                if (wd->supportMode & ZM_WIRELESS_MODE_24_11) {
                    /* support mode: b */
                    /* delete n mode information */
                    if ( FUNC14(dev, pBssInfo->frequency, pBssInfo->supportedRates)
                         || FUNC14(dev, pBssInfo->frequency, pBssInfo->extSupportedRates) ) {
                        goto zlError2;
                    } else {
                        FUNC11(dev, pBssInfo->supportedRates,
                                          pBssInfo->extSupportedRates);
                        pBssInfo->erp = 0;

                        pBssInfo->frameBodysize = FUNC15(dev,
                            pBssInfo->frameBody, pBssInfo->frameBodysize,
                            ZM_WLAN_EID_ERP);
                        pBssInfo->frameBodysize = FUNC15(dev,
                            pBssInfo->frameBody, pBssInfo->frameBodysize,
                            ZM_WLAN_EID_EXTENDED_RATE);

                        pBssInfo->frameBodysize = FUNC16(dev,
                            pBssInfo->frameBody, pBssInfo->frameBodysize,
                            pBssInfo->supportedRates);
                    }
                } else {
                    /* support mode: none */
                    goto zlError2;
                }
            }
        }
    }

    pBssInfo->flag |= ZM_BSS_INFO_VALID_BIT;

zlUpdateRssi:
    /* Update Timer information */
    pBssInfo->tick = wd->tick;

    /* Update ERP information */
    if ( (offset = FUNC6(dev, buf, ZM_WLAN_EID_ERP)) != 0xffff )
    {
        pBssInfo->erp = FUNC22(dev, buf, offset+2);
    }

    if( (s8_t)pBssInfo->signalStrength < (s8_t)AddInfo->Tail.Data.SignalStrength1 )
    {
        /* Update signal strength */
        pBssInfo->signalStrength = (u8_t)AddInfo->Tail.Data.SignalStrength1;
        /* Update signal quality */
        pBssInfo->signalQuality = (u8_t)(AddInfo->Tail.Data.SignalStrength1 * 2);

        /* Update the sorting value  */
        pBssInfo->sortValue = FUNC2(dev,
                                               (pBssInfo->supportedRates[6] + pBssInfo->extSupportedRates[0]),
                                               pBssInfo->EnableHT,
                                               pBssInfo->enableHT40,
                                               pBssInfo->signalStrength);
    }

    return 0;

zlError:

    return 1;

zlError2:

    return 2;
}