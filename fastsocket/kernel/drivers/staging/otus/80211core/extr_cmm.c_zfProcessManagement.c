
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef int u16_t ;
struct zsAdditionInfo {int dummy; } ;
struct TYPE_11__ {size_t CurChIndex; TYPE_4__* allowChannel; } ;
struct TYPE_9__ {int DFSEnable; } ;
struct TYPE_8__ {TYPE_1__* staTable; } ;
struct TYPE_12__ {scalar_t__ wlanMode; TYPE_5__ regulationTable; TYPE_3__ sta; TYPE_2__ ap; } ;
struct TYPE_10__ {int channelFlags; } ;
struct TYPE_7__ {int vap; } ;


 int ZM_LV_2 ;
 scalar_t__ ZM_MODE_AP ;
 int ZM_REG_FLAG_CHANNEL_CSA ;
 int ZM_REG_FLAG_CHANNEL_PASSIVE ;
 TYPE_6__* wd ;
 int zfApFindSta (int *,int*) ;
 int zfApProcessAction (int *,int *) ;
 int zfApProcessAsocReq (int *,int *,int*,int) ;
 int zfApProcessAuth (int *,int *,int*,int) ;
 int zfApProcessBeacon (int *,int *) ;
 int zfApProcessDeauth (int *,int *,int*,int) ;
 int zfApProcessDisasoc (int *,int *,int*,int) ;
 int zfApProcessProbeRsp (int *,int *,struct zsAdditionInfo*) ;
 int zfProcessProbeReq (int *,int *,int*) ;
 int zfStaProcessAction (int *,int *) ;
 int zfStaProcessAsocReq (int *,int *,int*,int ) ;
 int zfStaProcessAsocRsp (int *,int *) ;
 int zfStaProcessAtim (int *,int *) ;
 int zfStaProcessAuth (int *,int *,int*,int ) ;
 int zfStaProcessBeacon (int *,int *,struct zsAdditionInfo*) ;
 int zfStaProcessDeauth (int *,int *) ;
 int zfStaProcessDisasoc (int *,int *) ;
 int zfStaProcessProbeRsp (int *,int *,struct zsAdditionInfo*) ;
 int zm_debug_msg0 (char*) ;
 int zm_msg0_mm (int ,char*) ;
 int zm_msg2_mm (int ,char*,int) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_rx_buf_readb (int *,int *,int ) ;
 int zmw_rx_buf_readh (int *,int *,int) ;

void zfProcessManagement(zdev_t* dev, zbuf_t* buf, struct zsAdditionInfo* AddInfo)
{
    u8_t frameType;
    u16_t ta[3];
    u16_t ra[3];
    u16_t vap = 0, index = 0;


    zmw_get_wlan_dev(dev);

    ra[0] = zmw_rx_buf_readh(dev, buf, 4);
    ra[1] = zmw_rx_buf_readh(dev, buf, 6);
    ra[2] = zmw_rx_buf_readh(dev, buf, 8);

    ta[0] = zmw_rx_buf_readh(dev, buf, 10);
    ta[1] = zmw_rx_buf_readh(dev, buf, 12);
    ta[2] = zmw_rx_buf_readh(dev, buf, 14);

    frameType = zmw_rx_buf_readb(dev, buf, 0);

    if (wd->wlanMode == ZM_MODE_AP)
    {

        vap = 0;
        if ((ra[0] & 0x1) != 1)
        {

            if ((index = zfApFindSta(dev, ta)) != 0xffff)
            {
                vap = wd->ap.staTable[index].vap;
            }
        }
        zm_msg2_mm(ZM_LV_2, "vap=", vap);



        switch (frameType)
        {

            case 134 :
                zfApProcessBeacon(dev, buf);
                break;

            case 135 :
                zfApProcessAuth(dev, buf, ta, vap);
                break;

            case 138 :

            case 129 :
                zfApProcessAsocReq(dev, buf, ta, vap);
                break;

            case 137 :

                break;

            case 133 :
                zfApProcessDeauth(dev, buf, ta, vap);
                break;

            case 132 :
                zfApProcessDisasoc(dev, buf, ta, vap);
                break;

            case 131 :
                zfProcessProbeReq(dev, buf, ta);
                break;

            case 130 :
                zfApProcessProbeRsp(dev, buf, AddInfo);
                break;

            case 139 :
                zfApProcessAction(dev, buf);
                break;
        }
    }
    else
    {

        switch (frameType)
        {

            case 134 :

                if (((wd->regulationTable.allowChannel[wd->regulationTable.CurChIndex].channelFlags
                        & ZM_REG_FLAG_CHANNEL_CSA) != 0) && wd->sta.DFSEnable)
                {
                    wd->regulationTable.allowChannel[wd->regulationTable.CurChIndex].channelFlags
                            &= ~(ZM_REG_FLAG_CHANNEL_CSA & ZM_REG_FLAG_CHANNEL_PASSIVE);
                }
                zfStaProcessBeacon(dev, buf, AddInfo);
                break;

            case 135 :

                zfStaProcessAuth(dev, buf, ta, 0);
                break;

            case 138 :

                zfStaProcessAsocReq(dev, buf, ta, 0);
                break;

            case 137 :

            case 128 :
                zfStaProcessAsocRsp(dev, buf);
                break;

            case 133 :
                zm_debug_msg0("Deauthentication received");
                zfStaProcessDeauth(dev, buf);
                break;

            case 132 :
                zm_debug_msg0("Disassociation received");
                zfStaProcessDisasoc(dev, buf);
                break;

            case 131 :
                zfProcessProbeReq(dev, buf, ta);
                break;

            case 130 :

                if (((wd->regulationTable.allowChannel[wd->regulationTable.CurChIndex].channelFlags
                        & ZM_REG_FLAG_CHANNEL_CSA) != 0) && wd->sta.DFSEnable)
                {
                    wd->regulationTable.allowChannel[wd->regulationTable.CurChIndex].channelFlags
                            &= ~(ZM_REG_FLAG_CHANNEL_CSA & ZM_REG_FLAG_CHANNEL_PASSIVE);
                }
                zfStaProcessProbeRsp(dev, buf, AddInfo);
                break;

            case 136:
                zfStaProcessAtim(dev, buf);
                break;

            case 139 :
                zm_msg0_mm(ZM_LV_2, "ProcessActionMgtFrame");
                zfStaProcessAction(dev, buf);
                break;
        }
    }
}
