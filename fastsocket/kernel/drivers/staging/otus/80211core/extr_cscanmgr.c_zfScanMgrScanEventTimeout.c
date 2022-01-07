
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef int u16_t ;
struct TYPE_6__ {int currScanType; int scanStartDelay; scalar_t__* scanReqs; } ;
struct TYPE_7__ {int scanFrequency; scalar_t__ bChannelScan; int ibssSiteSurveyStatus; scalar_t__ rifsState; int currentFrequency; int HT2040; int EnableHT; scalar_t__ ibssReceiveBeaconCount; TYPE_2__ scanMgr; int bPassiveScan; } ;
struct TYPE_5__ {int allowChannelCnt; } ;
struct TYPE_8__ {TYPE_3__ sta; int (* zfcbScanNotify ) (int *,int *) ;scalar_t__ tickIbssReceiveBeacon; int ExtOffset; int BandWidth40; int frequency; TYPE_1__ regulationTable; } ;


 scalar_t__ FALSE ;
 int ZM_EVENT_IN_SCAN ;
 int ZM_EVENT_TIMEOUT_SCAN ;
 scalar_t__ ZM_RIFS_STATE_DETECTED ;


 int ZM_SCAN_MGR_SCAN_NONE ;
 int stub1 (int *,int *) ;
 TYPE_4__* wd ;
 int zfChGetLastChannel (int *,int*) ;
 int zfChGetNextChannel (int *,int,int *) ;
 int zfCoreSetFrequencyEx (int *,int ,int ,int ,int ) ;
 int zfCoreSetFrequencyV2 (int *,int,int ) ;
 int zfHpEnableRifs (int *,int,int ,int ) ;
 int zfHpFinishSiteSurvey (int *,int) ;
 int zfScanMgrEventScanCompleteCb ;
 int zfScanMgrEventSetFreqCompleteCb ;
 scalar_t__ zfStaIsConnected (int *) ;
 int zfStaReconnect (int *) ;
 int zfTimerCancel (int *,int ) ;
 int zm_assert (int ) ;
 int zm_debug_msg0 (char*) ;
 int zm_debug_msg1 (char*,int) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

u8_t zfScanMgrScanEventTimeout(zdev_t* dev)
{
    u16_t nextScanFrequency = 0;
    u8_t temp;

    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    zmw_enter_critical_section(dev);
    if ( wd->sta.scanFrequency == 0 )
    {
        zmw_leave_critical_section(dev);
        return -1;
    }

    nextScanFrequency = zfChGetNextChannel(dev, wd->sta.scanFrequency,
                                           &wd->sta.bPassiveScan);

    if ( (nextScanFrequency == 0xffff)
         || (wd->sta.scanFrequency == zfChGetLastChannel(dev, &temp)) )
    {
        u8_t currScanType;
        u8_t isExternalScan = 0;
        u8_t isInternalScan = 0;


        wd->sta.scanFrequency = 0;

        zm_debug_msg1("scan 1 type: ", wd->sta.scanMgr.currScanType);
        zm_debug_msg1("scan channel count = ", wd->regulationTable.allowChannelCnt);


        zfTimerCancel(dev, ZM_EVENT_TIMEOUT_SCAN);

        if ( wd->sta.bChannelScan == FALSE )
        {
            zm_debug_msg0("WOW!! scan is cancelled\n");
            zmw_leave_critical_section(dev);
            goto report_scan_result;
        }


        currScanType = wd->sta.scanMgr.currScanType;
        switch(currScanType)
        {
            case 129:
                isExternalScan = 1;

                if ( wd->sta.scanMgr.scanReqs[128 - 1] )
                {
                    wd->sta.scanMgr.scanReqs[128 - 1] = 0;
                    isInternalScan = 1;
                }

                break;

            case 128:
                isInternalScan = 1;

                if ( wd->sta.scanMgr.scanReqs[129 - 1] )
                {


                    zm_assert(0);
                }

                break;

            default:
                zm_assert(0);
                break;
        }

        wd->sta.scanMgr.scanReqs[currScanType - 1] = 0;
        wd->sta.scanMgr.scanStartDelay = 100;
        wd->sta.scanMgr.currScanType = ZM_SCAN_MGR_SCAN_NONE;
        zmw_leave_critical_section(dev);


        zfCoreSetFrequencyEx(dev, wd->frequency, wd->BandWidth40,
                wd->ExtOffset, zfScanMgrEventScanCompleteCb);

        wd->sta.bChannelScan = FALSE;


        if (zfStaIsConnected(dev))
        {
            zfHpFinishSiteSurvey(dev, 1);
            zmw_enter_critical_section(dev);
            wd->sta.ibssSiteSurveyStatus = 2;
            wd->tickIbssReceiveBeacon = 0;
            wd->sta.ibssReceiveBeaconCount = 0;
            zmw_leave_critical_section(dev);



            if( wd->sta.rifsState == ZM_RIFS_STATE_DETECTED )
            {
                zfHpEnableRifs(dev, ((wd->sta.currentFrequency<3000)?1:0), wd->sta.EnableHT, wd->sta.HT2040);
            }
        }
        else
        {
            zfHpFinishSiteSurvey(dev, 0);
            zmw_enter_critical_section(dev);
            wd->sta.ibssSiteSurveyStatus = 0;
            zmw_leave_critical_section(dev);
        }


report_scan_result:






        if ( isExternalScan )
        {
            if (wd->zfcbScanNotify != ((void*)0))
            {
                wd->zfcbScanNotify(dev, ((void*)0));
            }
        }

        if ( isInternalScan )
        {

            zfStaReconnect(dev);
        }

        return 0;
    }
    else
    {
        wd->sta.scanFrequency = nextScanFrequency;


        zfTimerCancel(dev, ZM_EVENT_IN_SCAN);
        zmw_leave_critical_section(dev);

        zm_debug_msg0("scan 2");
        zfCoreSetFrequencyV2(dev, wd->sta.scanFrequency, zfScanMgrEventSetFreqCompleteCb);

        return 1;
    }
}
