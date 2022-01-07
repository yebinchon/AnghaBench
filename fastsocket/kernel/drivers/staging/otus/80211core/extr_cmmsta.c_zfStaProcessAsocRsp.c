
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef scalar_t__ u32_t ;
typedef int u16_t ;
struct zsWlanAssoFrameHeader {scalar_t__ status; int aid; } ;
struct TYPE_7__ {int ChannelInfo; } ;
struct TYPE_6__ {int HtCapInfo; } ;
struct TYPE_8__ {TYPE_2__ HtInfo; TYPE_1__ HtCap; } ;
struct TYPE_9__ {scalar_t__ connectState; int EnableHT; int wmeConnected; int wmeEnabled; scalar_t__ asocRspFrameBodySize; int* asocRspFrameBody; int htCtrlBandwidth; int SWEncryptEnable; int HT2040; int aid; int rxBeaconCount; scalar_t__ connection_11b; int bssid; int connectByReasso; scalar_t__ failCntOfReasso; scalar_t__ SG40; int connPowerInHalfDbm; scalar_t__ oppositeCount; TYPE_3__ ie; int wmeQosInfo; int qosInfo; } ;
struct TYPE_10__ {scalar_t__ ExtOffset; int addbaCount; int CurrentTxRateKbps; int CurrentRxRateKbps; TYPE_4__ sta; int (* zfcbConnectNotify ) (int *,int ,int ) ;scalar_t__ addbaComplete; } ;


 int ExtHtCap_RIFSMode ;
 int FALSE ;
 int HTCAP_SupChannelWidthSet ;
 int TRUE ;
 scalar_t__ ZM_CACHED_FRAMEBODY_SIZE ;
 int ZM_EVENT_TIMEOUT_ADDBA ;
 scalar_t__ ZM_HP_CAP_11N_ONE_TX_STREAM ;
 int ZM_STATUS_MEDIA_CONNECT ;
 int ZM_STATUS_MEDIA_DISCONNECT_ASOC_FAILED ;
 scalar_t__ ZM_STA_CONN_STATE_ASSOCIATE ;
 int ZM_STA_STATE_CONNECTED ;
 int ZM_STA_UAPSD_ENABLE_BIT ;
 int ZM_STA_WME_ENABLE_BIT ;
 int ZM_SW_TKIP_ENCRY_EN ;
 int ZM_SW_WEP_ENCRY_EN ;
 int stub1 (int *,int ,int ) ;
 TYPE_5__* wd ;
 int zfAggSendAddbaRequest (int *,int ,int ,int ) ;
 int zfChangeAdapterState (int *,int ) ;
 int zfCopyFromRxBuffer (int *,int *,int *,int ,int) ;
 int zfFindWifiElement (int *,int *,int,int) ;
 scalar_t__ zfHpCapability (int *) ;
 int zfHpGetTransmitPower (int *) ;
 int zfPowerSavingMgrConnectNotify (int *) ;
 int zfStaConnectFail (int *,int ,int ,int) ;
 int zfStaIsConnecting (int *) ;
 int zfStaSetOppositeInfoFromRxBuf (int *,int *) ;
 int zfStaStoreAsocRspIe (int *,int *) ;
 int zfStaUpdateWmeParameter (int *,int *) ;
 int zfTimerSchedule (int *,int ,int) ;
 scalar_t__ zfwBufGetSize (int *,int *) ;
 int zm_debug_msg0 (char*) ;
 int zm_debug_msg1 (char*,scalar_t__) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_rx_buf_readb (int *,int *,scalar_t__) ;

void zfStaProcessAsocRsp(zdev_t* dev, zbuf_t* buf)
{
    struct zsWlanAssoFrameHeader* pAssoFrame;
    u8_t pBuf[sizeof(struct zsWlanAssoFrameHeader)];
    u16_t offset;
    u32_t i;
    u32_t oneTxStreamCap;

    zmw_get_wlan_dev(dev);

    if ( !zfStaIsConnecting(dev) )
    {
        return;
    }

    pAssoFrame = (struct zsWlanAssoFrameHeader*) pBuf;
    zfCopyFromRxBuffer(dev, buf, pBuf, 0, sizeof(struct zsWlanAssoFrameHeader));

    if ( wd->sta.connectState == ZM_STA_CONN_STATE_ASSOCIATE )
    {
        if ( pAssoFrame->status == 0 )
        {
            zm_debug_msg0("ZM_STA_STATE_CONNECTED");

            if (wd->sta.EnableHT == 1)
            {
                wd->sta.wmeConnected = 1;
            }
            if ((wd->sta.wmeEnabled & ZM_STA_WME_ENABLE_BIT) != 0)
            {

                if ((offset = zfFindWifiElement(dev, buf, 2, 1)) != 0xffff)
                {
                    zm_debug_msg0("WME enable");
                    wd->sta.wmeConnected = 1;
                    if ((wd->sta.wmeEnabled & ZM_STA_UAPSD_ENABLE_BIT) != 0)
                    {
                        if ((zmw_rx_buf_readb(dev, buf, offset+8) & 0x80) != 0)
                        {
                            zm_debug_msg0("UAPSD enable");
                            wd->sta.qosInfo = wd->sta.wmeQosInfo;
                        }
                    }

                    zfStaUpdateWmeParameter(dev, buf);
                }
            }



            wd->sta.asocRspFrameBodySize = zfwBufGetSize(dev, buf)-24;
            if (wd->sta.asocRspFrameBodySize > ZM_CACHED_FRAMEBODY_SIZE)
            {
                wd->sta.asocRspFrameBodySize = ZM_CACHED_FRAMEBODY_SIZE;
            }
            for (i=0; i<wd->sta.asocRspFrameBodySize; i++)
            {
                wd->sta.asocRspFrameBody[i] = zmw_rx_buf_readb(dev, buf, i+24);
            }

            zfStaStoreAsocRspIe(dev, buf);
            if (wd->sta.EnableHT &&
                ((wd->sta.ie.HtCap.HtCapInfo & HTCAP_SupChannelWidthSet) != 0) &&
                (wd->ExtOffset != 0))
            {
                wd->sta.htCtrlBandwidth = 1;
            }
            else
            {
                wd->sta.htCtrlBandwidth = 0;
            }





            if (wd->sta.EnableHT == 1)
            {
                wd->addbaComplete = 0;

                if ((wd->sta.SWEncryptEnable & ZM_SW_TKIP_ENCRY_EN) == 0 &&
                    (wd->sta.SWEncryptEnable & ZM_SW_WEP_ENCRY_EN) == 0)
                {
                    wd->addbaCount = 1;
                    zfAggSendAddbaRequest(dev, wd->sta.bssid, 0, 0);
                    zfTimerSchedule(dev, ZM_EVENT_TIMEOUT_ADDBA, 100);
                }
            }


            if(wd->sta.ie.HtInfo.ChannelInfo & ExtHtCap_RIFSMode)
            {
                wd->sta.HT2040 = 1;

            }

            wd->sta.aid = pAssoFrame->aid & 0x3fff;
            wd->sta.oppositeCount = 0;
            zfStaSetOppositeInfoFromRxBuf(dev, buf);

            wd->sta.rxBeaconCount = 16;

            zfChangeAdapterState(dev, ZM_STA_STATE_CONNECTED);
            wd->sta.connPowerInHalfDbm = zfHpGetTransmitPower(dev);
            if (wd->zfcbConnectNotify != ((void*)0))
            {
                if (wd->sta.EnableHT != 0)
             {
              oneTxStreamCap = (zfHpCapability(dev) & ZM_HP_CAP_11N_ONE_TX_STREAM);
              if (wd->sta.htCtrlBandwidth == 1)
              {
         if(oneTxStreamCap)
            {
                if (wd->sta.SG40)
                {
                    wd->CurrentTxRateKbps = 150000;
              wd->CurrentRxRateKbps = 300000;
                }
                else
                {
                    wd->CurrentTxRateKbps = 135000;
              wd->CurrentRxRateKbps = 270000;
                }
            }
            else
            {
                if (wd->sta.SG40)
                {
                    wd->CurrentTxRateKbps = 300000;
              wd->CurrentRxRateKbps = 300000;
                }
                else
                {
                    wd->CurrentTxRateKbps = 270000;
              wd->CurrentRxRateKbps = 270000;
                }
            }
              }
              else
              {
                  if(oneTxStreamCap)
            {
                wd->CurrentTxRateKbps = 650000;
          wd->CurrentRxRateKbps = 130000;
            }
            else
            {
                wd->CurrentTxRateKbps = 130000;
             wd->CurrentRxRateKbps = 130000;
            }
              }
                }
                else
                {
                    if (wd->sta.connection_11b != 0)
                    {
                        wd->CurrentTxRateKbps = 11000;
               wd->CurrentRxRateKbps = 11000;
                    }
                    else
                    {
                        wd->CurrentTxRateKbps = 54000;
               wd->CurrentRxRateKbps = 54000;
           }
                }


                wd->zfcbConnectNotify(dev, ZM_STATUS_MEDIA_CONNECT, wd->sta.bssid);
            }
            wd->sta.connectByReasso = TRUE;
            wd->sta.failCntOfReasso = 0;

            zfPowerSavingMgrConnectNotify(dev);
        }
        else
        {
            zm_debug_msg1("association failed, status = ",
                          pAssoFrame->status);

            zm_debug_msg0("ZM_STA_STATE_DISCONNECT");
            wd->sta.connectByReasso = FALSE;
            zfStaConnectFail(dev, ZM_STATUS_MEDIA_DISCONNECT_ASOC_FAILED, wd->sta.bssid, 3);
        }
    }

}
