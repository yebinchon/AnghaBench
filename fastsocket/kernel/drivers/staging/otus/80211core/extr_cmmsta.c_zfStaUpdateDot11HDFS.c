
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u16_t ;
struct TYPE_3__ {scalar_t__ DFSDisableTx; int rxBeaconCount; int currentFrequency; } ;
struct TYPE_4__ {TYPE_1__ sta; int frequency; } ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int ZM_WLAN_EID_CHANNEL_SWITCH_ANNOUNCE ;
 TYPE_2__* wd ;
 int zfChNumToFreq (int *,int,int ) ;
 int zfCoreSetFrequency (int *,int ) ;
 int zfFindElement (int *,int *,int ) ;
 int zfHpDeleteAllowChannel (int *,int ) ;
 int zfHpStartRecv (int *) ;
 scalar_t__ zfStaIsConnected (int *) ;
 int zm_debug_msg0 (char*) ;
 int zm_debug_msg1 (char*,int ) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_rx_buf_readb (int *,int *,int) ;

void zfStaUpdateDot11HDFS(zdev_t* dev, zbuf_t* buf)
{

    u16_t offset;

    zmw_get_wlan_dev(dev);
    if ( (offset = zfFindElement(dev, buf, ZM_WLAN_EID_CHANNEL_SWITCH_ANNOUNCE)) == 0xffff )
    {

        return;
    }
    else if ( zmw_rx_buf_readb(dev, buf, offset+1) == 0x3 )
    {
        zm_debug_msg0("EID(Channel Switch Announcement) found");






        if (zmw_rx_buf_readb(dev, buf, offset+2) == 0x1 )
        {


         if (wd->sta.DFSDisableTx != TRUE)
         {


                wd->sta.DFSDisableTx = TRUE;

                zfHpStartRecv(dev);
            }




        }

        if (zmw_rx_buf_readb(dev, buf, offset+4) <= 0x2 )
        {







            zfHpDeleteAllowChannel(dev, wd->sta.currentFrequency);
         wd->frequency = zfChNumToFreq(dev, zmw_rx_buf_readb(dev, buf, offset+3), 0);

         zm_debug_msg1("CWY - jump to frequency = ", wd->frequency);
         zfCoreSetFrequency(dev, wd->frequency);
         wd->sta.DFSDisableTx = FALSE;

            if (zfStaIsConnected(dev))
            {
                wd->sta.rxBeaconCount = 1 << 6;
            }
        }
    }

}
