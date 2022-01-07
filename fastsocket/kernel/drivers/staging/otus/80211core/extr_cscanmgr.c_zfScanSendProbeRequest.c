
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
struct TYPE_6__ {TYPE_1__* probingSsidList; } ;
struct TYPE_7__ {scalar_t__ disableProbingWithSsid; int scanFrequency; scalar_t__ DFSEnable; scalar_t__ bPassiveScan; int rxBeaconCount; } ;
struct TYPE_8__ {TYPE_2__ ws; TYPE_3__ sta; } ;
struct TYPE_5__ {scalar_t__ ssidLen; } ;


 int ZM_MAX_PROBE_HIDDEN_SSID_SIZE ;
 int ZM_WLAN_FRAME_TYPE_PROBEREQ ;
 TYPE_4__* wd ;
 scalar_t__ zfHpIsDfsChannel (int *,int ) ;
 int zfSendMmFrame (int *,int ,int*,int,int ,int ) ;
 scalar_t__ zfStaIsConnected (int *) ;
 int zmw_get_wlan_dev (int *) ;

__attribute__((used)) static void zfScanSendProbeRequest(zdev_t* dev)
{
    u8_t k;
    u16_t dst[3] = { 0xffff, 0xffff, 0xffff };

    zmw_get_wlan_dev(dev);


    if (zfStaIsConnected(dev))
    {
        wd->sta.rxBeaconCount++;
    }

    if ( wd->sta.bPassiveScan )
    {
        return;
    }

    if (wd->sta.DFSEnable)
    {
        if (zfHpIsDfsChannel(dev, wd->sta.scanFrequency))
        {
            return;
        }
    }

    zfSendMmFrame(dev, ZM_WLAN_FRAME_TYPE_PROBEREQ, dst, 0, 0, 0);

    if ( wd->sta.disableProbingWithSsid )
    {
        return;
    }

    for (k=1; k<=ZM_MAX_PROBE_HIDDEN_SSID_SIZE; k++)
    {
        if ( wd->ws.probingSsidList[k-1].ssidLen != 0 )
        {
            zfSendMmFrame(dev, ZM_WLAN_FRAME_TYPE_PROBEREQ, dst, k, 0, 0);
        }
    }
}
