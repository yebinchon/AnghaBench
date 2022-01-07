
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
typedef int u32_t ;
typedef int u16_t ;
struct TYPE_7__ {int currentFrequency; int connection_11b; int EnableHT; int SG40; TYPE_2__* oppositeInfo; } ;
struct TYPE_5__ {scalar_t__ bIbssGMode; } ;
struct TYPE_8__ {int supportMode; scalar_t__ wlanMode; TYPE_3__ sta; TYPE_1__ wfc; } ;
struct TYPE_6__ {int* macAddr; int rcCell; } ;


 int ZM_HP_CAP_11N_ONE_TX_STREAM ;
 scalar_t__ ZM_MODE_IBSS ;
 int ZM_WIRELESS_MODE_24_54 ;
 int ZM_WIRELESS_MODE_24_N ;
 int ZM_WLAN_EID_EXTENDED_RATE ;
 scalar_t__ ZM_WLAN_HEADER_A2_OFFSET ;
 TYPE_4__* wd ;
 int zfCopyFromRxBuffer (int *,int *,int*,scalar_t__,int) ;
 int zfFindElement (int *,int *,int ) ;
 int zfHpCapability (int *) ;
 int zfHpSetRTSCTSRate (int *,int) ;
 int zfRateCtrlInitCell (int *,int *,int,int,int ) ;
 int zfStaFindFreeOpposite (int *,int*,int*) ;
 int zfStaInitCommonOppositeInfo (int *,int) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;
 int zmw_rx_buf_readh (int *,int *,scalar_t__) ;

int zfStaSetOppositeInfoFromRxBuf(zdev_t* dev, zbuf_t* buf)
{
    int i;
    u8_t* dst;
    u16_t sa[3];
    int res = 0;
    u16_t offset;
    u8_t bSupportExtRate;
    u32_t rtsctsRate = 0xffffffff;
    u32_t oneTxStreamCap;

    zmw_get_wlan_dev(dev);
    zmw_declare_for_critical_section();

    sa[0] = zmw_rx_buf_readh(dev, buf, ZM_WLAN_HEADER_A2_OFFSET);
    sa[1] = zmw_rx_buf_readh(dev, buf, ZM_WLAN_HEADER_A2_OFFSET+2);
    sa[2] = zmw_rx_buf_readh(dev, buf, ZM_WLAN_HEADER_A2_OFFSET+4);

    zmw_enter_critical_section(dev);

    res = zfStaFindFreeOpposite(dev, sa, &i);
    if ( res != 0 )
    {
        goto zlReturn;
    }

    dst = wd->sta.oppositeInfo[i].macAddr;
    zfCopyFromRxBuffer(dev, buf, dst, ZM_WLAN_HEADER_A2_OFFSET, 6);

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
    oneTxStreamCap = (zfHpCapability(dev) & ZM_HP_CAP_11N_ONE_TX_STREAM);

    if ( ((offset = zfFindElement(dev, buf, ZM_WLAN_EID_EXTENDED_RATE)) != 0xffff)
         && (bSupportExtRate == 1) )
    {

        if (wd->sta.currentFrequency < 3000)
        {

            if (wd->sta.EnableHT == 1)
            {

                zfRateCtrlInitCell(dev, &wd->sta.oppositeInfo[i].rcCell, (oneTxStreamCap!=0)?3:2, 1, wd->sta.SG40);
            }
            else
            {

                zfRateCtrlInitCell(dev, &wd->sta.oppositeInfo[i].rcCell, 1, 1, wd->sta.SG40);
            }
            rtsctsRate = 0x00001bb;
        }
        else
        {

            if (wd->sta.EnableHT == 1)
            {

                zfRateCtrlInitCell(dev, &wd->sta.oppositeInfo[i].rcCell, (oneTxStreamCap!=0)?3:2, 0, wd->sta.SG40);
            }
            else
            {

                zfRateCtrlInitCell(dev, &wd->sta.oppositeInfo[i].rcCell, 1, 0, wd->sta.SG40);
            }
            rtsctsRate = 0x10b01bb;
        }
    }
    else
    {

        if (wd->sta.currentFrequency < 3000)
        {

            if (wd->sta.EnableHT == 1)
            {

                zfRateCtrlInitCell(dev, &wd->sta.oppositeInfo[i].rcCell, (oneTxStreamCap!=0)?3:2, 1, wd->sta.SG40);
                rtsctsRate = 0x00001bb;
            }
            else
            {

                zfRateCtrlInitCell(dev, &wd->sta.oppositeInfo[i].rcCell, 0, 1, wd->sta.SG40);
                rtsctsRate = 0x0;
                wd->sta.connection_11b = 1;
            }
        }
        else
        {

            if (wd->sta.EnableHT == 1)
            {

                zfRateCtrlInitCell(dev, &wd->sta.oppositeInfo[i].rcCell, (oneTxStreamCap!=0)?3:2, 0, wd->sta.SG40);
            }
            else
            {

                zfRateCtrlInitCell(dev, &wd->sta.oppositeInfo[i].rcCell, 1, 0, wd->sta.SG40);
            }
            rtsctsRate = 0x10b01bb;
        }
    }

    zfStaInitCommonOppositeInfo(dev, i);

zlReturn:
    zmw_leave_critical_section(dev);

    if (rtsctsRate != 0xffffffff)
    {
        zfHpSetRTSCTSRate(dev, rtsctsRate);
    }
    return res;
}
