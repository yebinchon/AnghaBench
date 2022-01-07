
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef int u16_t ;
struct zsWlanBeaconFrameHeader {int dummy; } ;
struct zsPartnerNotifyEvent {int dummy; } ;
struct zsBssInfo {scalar_t__ macaddr; } ;
struct TYPE_5__ {int SignalQuality; int SignalStrength1; } ;
struct TYPE_6__ {TYPE_1__ Data; } ;
struct zsAdditionInfo {TYPE_2__ Tail; } ;
struct TYPE_7__ {scalar_t__ oppositeCount; int ssidLen; int* capability; int bChannelScan; int * ssid; int ibssReceiveBeaconCount; int rxBeaconCount; scalar_t__ TPCEnable; scalar_t__ DFSEnable; int bssid; } ;
struct TYPE_8__ {scalar_t__ wlanMode; TYPE_3__ sta; int (* zfcbIbssPartnerNotify ) (int *,int,struct zsPartnerNotifyEvent*) ;} ;


 int ZM_BIT_1 ;
 int ZM_BIT_4 ;
 int ZM_MAC_WORD_TO_BYTE (int ,int *) ;
 scalar_t__ ZM_MODE_IBSS ;
 scalar_t__ ZM_MODE_INFRASTRUCTURE ;
 int ZM_WLAN_EID_SSID ;
 int ZM_WLAN_HEADER_A2_OFFSET ;
 int ZM_WLAN_HEADER_A3_OFFSET ;
 int capabilityInfo ;
 int offset ;
 int stub1 (int *,int,struct zsPartnerNotifyEvent*) ;
 TYPE_4__* wd ;
 struct zsBssInfo* zfBssInfoAllocate (int *) ;
 int zfBssInfoFree (int *,struct zsBssInfo*) ;
 int zfBssInfoInsertToList (int *,struct zsBssInfo*) ;
 int zfBssInfoRemoveFromList (int *,struct zsBssInfo*) ;
 int zfCopyFromRxBuffer (int *,int *,int *,int,int) ;
 int zfFindElement (int *,int *,int ) ;
 int zfInitPartnerNotifyEvent (int *,int *,struct zsPartnerNotifyEvent*) ;
 int zfPowerSavingMgrProcessBeacon (int *,int *) ;
 scalar_t__ zfRxBufferEqualToStr (int *,int *,int *,int,int) ;
 struct zsBssInfo* zfStaFindBssInfo (int *,int *,struct zsWlanBeaconFrameHeader*) ;
 int zfStaFindFreeOpposite (int *,int *,int*) ;
 int zfStaInitBssInfo (int *,int *,struct zsWlanBeaconFrameHeader*,struct zsBssInfo*,struct zsAdditionInfo*,int) ;
 scalar_t__ zfStaIsConnected (int *) ;
 int zfStaProtErpMonitor (int *,int *) ;
 int zfStaSetOppositeInfoFromRxBuf (int *,int *) ;
 int zfStaSignalStatistic (int *,int ,int ) ;
 int zfStaUpdateDot11HDFS (int *,int *) ;
 int zfStaUpdateDot11HTPC (int *,int *) ;
 int zfStaUpdateWmeParameter (int *,int *) ;
 int zfUpdateBssid (int *,int *) ;
 int zm_debug_msg0 (char*) ;
 int zmw_buf_readb (int *,int *,int) ;
 int zmw_buf_readh (int *,int *,int) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfStaProcessBeacon(zdev_t* dev, zbuf_t* buf, struct zsAdditionInfo* AddInfo)
{

    struct zsWlanBeaconFrameHeader* pBeaconHeader;
    struct zsBssInfo* pBssInfo;
    u8_t pBuf[sizeof(struct zsWlanBeaconFrameHeader)];
    u8_t bssid[6];
    int res;

    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();


    zfStaProtErpMonitor(dev, buf);

    if (zfStaIsConnected(dev))
    {
        ZM_MAC_WORD_TO_BYTE(wd->sta.bssid, bssid);

        if ( wd->wlanMode == ZM_MODE_INFRASTRUCTURE )
        {
            if ( zfRxBufferEqualToStr(dev, buf, bssid, ZM_WLAN_HEADER_A2_OFFSET, 6) )
            {
                zfPowerSavingMgrProcessBeacon(dev, buf);
                zfStaUpdateWmeParameter(dev, buf);
                if (wd->sta.DFSEnable)
                    zfStaUpdateDot11HDFS(dev, buf);
                if (wd->sta.TPCEnable)
                    zfStaUpdateDot11HTPC(dev, buf);

                zfStaSignalStatistic(dev, AddInfo->Tail.Data.SignalStrength1,
                        AddInfo->Tail.Data.SignalQuality);
                wd->sta.rxBeaconCount++;
            }
        }
        else if ( wd->wlanMode == ZM_MODE_IBSS )
        {
            if ( zfRxBufferEqualToStr(dev, buf, bssid, ZM_WLAN_HEADER_A3_OFFSET, 6) )
            {
                int res;
                struct zsPartnerNotifyEvent event;

                zm_debug_msg0("20070916 Receive opposite Beacon!");
                zmw_enter_critical_section(dev);
                wd->sta.ibssReceiveBeaconCount++;
                zmw_leave_critical_section(dev);

                res = zfStaSetOppositeInfoFromRxBuf(dev, buf);
                if ( res == 0 )
                {

                    zfInitPartnerNotifyEvent(dev, buf, &event);
                    if (wd->zfcbIbssPartnerNotify != ((void*)0))
                    {
                        wd->zfcbIbssPartnerNotify(dev, 1, &event);
                    }
                }

                zfStaSignalStatistic(dev, AddInfo->Tail.Data.SignalStrength1,
                        AddInfo->Tail.Data.SignalQuality);
            }
        }
    }


    if ( !wd->sta.bChannelScan )
    {
        goto zlReturn;
    }

    zfCopyFromRxBuffer(dev, buf, pBuf, 0, sizeof(struct zsWlanBeaconFrameHeader));
    pBeaconHeader = (struct zsWlanBeaconFrameHeader*) pBuf;

    zmw_enter_critical_section(dev);



    pBssInfo = zfStaFindBssInfo(dev, buf, pBeaconHeader);

    if ( pBssInfo == ((void*)0) )
    {

        pBssInfo = zfBssInfoAllocate(dev);
        if (pBssInfo != ((void*)0))
        {
            res = zfStaInitBssInfo(dev, buf, pBeaconHeader, pBssInfo, AddInfo, 0);

            if ( res != 0 )
            {
                zfBssInfoFree(dev, pBssInfo);
            }
            else
            {
                zfBssInfoInsertToList(dev, pBssInfo);
            }
        }
    }
    else
    {
        res = zfStaInitBssInfo(dev, buf, pBeaconHeader, pBssInfo, AddInfo, 1);
        if (res == 2)
        {
            zfBssInfoRemoveFromList(dev, pBssInfo);
            zfBssInfoFree(dev, pBssInfo);
        }
        else if ( wd->wlanMode == ZM_MODE_IBSS )
        {
            int idx;


            zfStaFindFreeOpposite(dev, (u16_t *)pBssInfo->macaddr, &idx);
        }
    }

    zmw_leave_critical_section(dev);

zlReturn:

    return;
}
