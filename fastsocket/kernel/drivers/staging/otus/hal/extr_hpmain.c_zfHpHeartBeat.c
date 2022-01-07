
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef int u32_t ;
struct zsHpPriv {scalar_t__ ibssBcnEnabled; scalar_t__ hwFrequency; int ibssBcnInterval; int aggMaxDurationBE; int aggPktNum; int latestSIFS; int strongRSSI; int currentAckRtsTpc; int halCapability; int rxStrongRSSI; int* eepromImage; int* usbAcSendBytes; int* txop; int* cwmin; int slotType; scalar_t__* cwmax; scalar_t__ retransmissionEvent; } ;
struct TYPE_3__ {int EnableHT; scalar_t__ enableDrvBA; int avgSizeOfReceivePackets; int athOwlAp; scalar_t__ bScheduleScan; scalar_t__ bChannelScan; int SWEncryptEnable; } ;
struct TYPE_4__ {int tick; scalar_t__ wlanMode; int BandWidth40; scalar_t__ dynamicSIFSEnable; scalar_t__ SignalStrength; TYPE_1__ sta; struct zsHpPriv* hpPrivate; } ;


 scalar_t__ FALSE ;
 int ZM_BEACON_BUFFER_ADDRESS ;
 scalar_t__ ZM_CH_G_14 ;
 int ZM_HP_CAP_11N_ONE_TX_STREAM ;
 int ZM_MAC_REG_AC0_CW ;
 int ZM_MAC_REG_AC1_AC0_TXOP ;
 int ZM_MAC_REG_BCN_ADDR ;
 int ZM_MAC_REG_BCN_PERIOD ;
 int ZM_MAC_REG_EIFS_AND_SIFS ;
 scalar_t__ ZM_MODE_INFRASTRUCTURE ;
 int ZM_RX_SIGNAL_THRESHOLD_H ;
 int ZM_RX_SIGNAL_THRESHOLD_L ;
 scalar_t__ ZM_SIGNAL_THRESHOLD ;
 int ZM_SW_TKIP_ENCRY_EN ;
 int ZM_SW_WEP_ENCRY_EN ;
 TYPE_2__* wd ;
 int zfDelayWriteInternalReg (int *,int,int) ;
 int zfFlushDelayWrite (int *) ;
 scalar_t__ zfStaIsConnected (int *) ;
 int zm_debug_msg1 (char*,int) ;
 int zmw_get_wlan_dev (int *) ;

void zfHpHeartBeat(zdev_t* dev)
{
    struct zsHpPriv* hpPriv;
    u8_t polluted = 0;
    u8_t ackTpc;

    zmw_get_wlan_dev(dev);
    hpPriv=wd->hpPrivate;


    if (hpPriv->ibssBcnEnabled != 0)
    {
        if (hpPriv->hwFrequency <= ZM_CH_G_14)
        {
            if ((wd->tick % 10) == 0)
            {
                if ((wd->tick % 40) == 0)
                {
                    zfDelayWriteInternalReg(dev, ZM_MAC_REG_BCN_PERIOD, hpPriv->ibssBcnInterval-1);
                    polluted = 1;
                }
                else
                {
                    zfDelayWriteInternalReg(dev, ZM_MAC_REG_BCN_PERIOD, hpPriv->ibssBcnInterval);
                    polluted = 1;
                }
            }
        }
    }

    if ((wd->tick & 0x3f) == 0x25)
    {

        if (hpPriv->ibssBcnEnabled != 0)
        {
            zfDelayWriteInternalReg(dev, ZM_MAC_REG_BCN_ADDR, ZM_BEACON_BUFFER_ADDRESS);
            polluted = 1;
        }



        if (( wd->wlanMode == ZM_MODE_INFRASTRUCTURE )
            && (zfStaIsConnected(dev))
            && (wd->sta.EnableHT == 1)
            && (wd->BandWidth40 == 1)
            && (wd->sta.enableDrvBA ==0)
            && (hpPriv->aggMaxDurationBE > 2000)
            && (wd->sta.avgSizeOfReceivePackets > 1420))
        {
            zfDelayWriteInternalReg(dev, 0x1c3b9c, 0x8000a);
            polluted = 1;
        }
        else
        {
            zfDelayWriteInternalReg(dev, 0x1c3b9c, hpPriv->aggPktNum);
            polluted = 1;
        }

        if (wd->dynamicSIFSEnable == 0)
        {
            if (( wd->wlanMode == ZM_MODE_INFRASTRUCTURE )
                && (zfStaIsConnected(dev))
                && (wd->sta.EnableHT == 1)
                && (wd->BandWidth40 == 0)
                && (wd->sta.enableDrvBA ==0))
            {
                zfDelayWriteInternalReg(dev, 0x1c3698, 0x5144000);
                polluted = 1;
            }
            else
            {
                zfDelayWriteInternalReg(dev, 0x1c3698, 0xA144000);
                polluted = 1;
            }
        }
        else
        {
            if (( wd->wlanMode == ZM_MODE_INFRASTRUCTURE )
                && (zfStaIsConnected(dev))
                && (wd->sta.EnableHT == 1)
                && (wd->sta.athOwlAp == 1))
            {
                if (hpPriv->retransmissionEvent)
                {
                    switch(hpPriv->latestSIFS)
                    {
                    case 0:
                        hpPriv->latestSIFS = 1;
                        zfDelayWriteInternalReg(dev, ZM_MAC_REG_EIFS_AND_SIFS, 0x8144000);
                        break;
                    case 1:
                        hpPriv->latestSIFS = 2;
                        zfDelayWriteInternalReg(dev, ZM_MAC_REG_EIFS_AND_SIFS, 0xa144000);
                        break;
                    case 2:
                        hpPriv->latestSIFS = 3;
                        zfDelayWriteInternalReg(dev, ZM_MAC_REG_EIFS_AND_SIFS, 0xc144000);
                        break;
                    case 3:
                        hpPriv->latestSIFS = 0;
                        zfDelayWriteInternalReg(dev, ZM_MAC_REG_EIFS_AND_SIFS, 0xa144000);
                        break;
                    default:
                        hpPriv->latestSIFS = 0;
                        zfDelayWriteInternalReg(dev, ZM_MAC_REG_EIFS_AND_SIFS, 0xa144000);
                        break;
                    }
                    polluted = 1;
                    zm_debug_msg1("##### Correct Tx retransmission issue #####, ", hpPriv->latestSIFS);
                    hpPriv->retransmissionEvent = 0;
                }
            }
            else
            {
                hpPriv->latestSIFS = 0;
                hpPriv->retransmissionEvent = 0;
                zfDelayWriteInternalReg(dev, 0x1c3698, 0xA144000);
                polluted = 1;
            }
        }

        if ((wd->sta.bScheduleScan == FALSE) && (wd->sta.bChannelScan == FALSE))
        {

        if (( wd->wlanMode == ZM_MODE_INFRASTRUCTURE )
            && (zfStaIsConnected(dev))
            && (wd->SignalStrength > 66))
        {


            {
                hpPriv->strongRSSI = 1;

                if (hpPriv->currentAckRtsTpc > (14+10))
                {
                    ackTpc = hpPriv->currentAckRtsTpc - 14;
                }
                else
                {
                    ackTpc = 10;
                }
                zfDelayWriteInternalReg(dev, 0x1c3694, ((ackTpc) << 20) | (0x1<<26));
                zfDelayWriteInternalReg(dev, 0x1c3bb4, ((ackTpc) << 5 ) | (0x1<<11) |
                                                       ((ackTpc) << 21) | (0x1<<27) );
                polluted = 1;
            }
        }
        else
        {


            {
                hpPriv->strongRSSI = 0;
                if (hpPriv->halCapability & ZM_HP_CAP_11N_ONE_TX_STREAM)
                {
                    zfDelayWriteInternalReg(dev, 0x1c3694, ((hpPriv->currentAckRtsTpc&0x3f) << 20) | (0x1<<26));
                    zfDelayWriteInternalReg(dev, 0x1c3bb4, ((hpPriv->currentAckRtsTpc&0x3f) << 5 ) | (0x1<<11) |
                                                       ((hpPriv->currentAckRtsTpc&0x3f) << 21) | (0x1<<27) );
                }
                else
                {
                    zfDelayWriteInternalReg(dev, 0x1c3694, ((hpPriv->currentAckRtsTpc&0x3f) << 20) | (0x5<<26));
                    zfDelayWriteInternalReg(dev, 0x1c3bb4, ((hpPriv->currentAckRtsTpc&0x3f) << 5 ) | (0x5<<11) |
                                                       ((hpPriv->currentAckRtsTpc&0x3f) << 21) | (0x5<<27) );
                }
                polluted = 1;
            }
        }

        }

        if ((hpPriv->halCapability & ZM_HP_CAP_11N_ONE_TX_STREAM) == 0)
        {
            if ((wd->sta.bScheduleScan == FALSE) && (wd->sta.bChannelScan == FALSE))
            {


                u8_t rxSignalThresholdH = 71;
                u8_t rxSignalThresholdL = 66;



                if (( wd->wlanMode == ZM_MODE_INFRASTRUCTURE )
                    && (zfStaIsConnected(dev))
                    && (wd->SignalStrength > rxSignalThresholdH)
                    )
                {
                    hpPriv->rxStrongRSSI = 1;




                    if ((hpPriv->eepromImage[0x100+0x110*2/4]&0xff) == 0x80)
                    {
                        if (hpPriv->hwFrequency <= ZM_CH_G_14)
                        {
                            zfDelayWriteInternalReg(dev, 0x1c8960, 0x900);
                        }
                        else
                        {
                            zfDelayWriteInternalReg(dev, 0x1c8960, 0x9b49);
                        }
                    }
                    else
                    {
                        zfDelayWriteInternalReg(dev, 0x1c8960, 0x0900);
                    }
                    polluted = 1;
                }
                else if (( wd->wlanMode == ZM_MODE_INFRASTRUCTURE )
                    && (zfStaIsConnected(dev))
                    && (wd->SignalStrength > rxSignalThresholdL)
                    )
                {

                }
                else
                {


                    {
                        hpPriv->rxStrongRSSI = 0;




                        if ((hpPriv->eepromImage[0x100+0x110*2/4]&0xff) == 0x80)
                        {
                            if (hpPriv->hwFrequency <= ZM_CH_G_14)
                            {
                                zfDelayWriteInternalReg(dev, 0x1c8960, 0x9b49);
                            }
                            else
                            {
                                zfDelayWriteInternalReg(dev, 0x1c8960, 0x0900);
                            }
                        }
                        else
                        {
                            zfDelayWriteInternalReg(dev, 0x1c8960, 0x9b40);
                        }
                        polluted = 1;
                    }
                }

            }
        }

        if (hpPriv->usbAcSendBytes[3] > (hpPriv->usbAcSendBytes[0]*2))
        {
            zfDelayWriteInternalReg(dev, ZM_MAC_REG_AC1_AC0_TXOP, hpPriv->txop[3]);
            polluted = 1;
        }
        else if (hpPriv->usbAcSendBytes[2] > (hpPriv->usbAcSendBytes[0]*2))
        {
            zfDelayWriteInternalReg(dev, ZM_MAC_REG_AC1_AC0_TXOP, hpPriv->txop[2]);
            polluted = 1;
        }
        else if (hpPriv->usbAcSendBytes[1] > (hpPriv->usbAcSendBytes[0]*2))
        {
            zfDelayWriteInternalReg(dev, ZM_MAC_REG_AC0_CW, hpPriv->cwmin[1]+((u32_t)hpPriv->cwmax[1]<<16));
            polluted = 1;
        }
        else
        {
            if (hpPriv->slotType == 1)
            {
                if ((wd->sta.enableDrvBA ==0)
                   && (hpPriv->aggMaxDurationBE > 2000))
                {
                    zfDelayWriteInternalReg(dev, ZM_MAC_REG_AC0_CW, (hpPriv->cwmin[0]/2)+((u32_t)hpPriv->cwmax[0]<<16));
                }
                else
                {
                    zfDelayWriteInternalReg(dev, ZM_MAC_REG_AC0_CW, hpPriv->cwmin[0]+((u32_t)hpPriv->cwmax[0]<<16));
                }
                polluted = 1;
            }
            else
            {


                zfDelayWriteInternalReg(dev, ZM_MAC_REG_AC0_CW, hpPriv->cwmin[0]+((u32_t)hpPriv->cwmax[0]<<16));
                polluted = 1;
            }

            if ((wd->sta.SWEncryptEnable & (ZM_SW_TKIP_ENCRY_EN|ZM_SW_WEP_ENCRY_EN)) == 0)
            {
                zfDelayWriteInternalReg(dev, ZM_MAC_REG_AC1_AC0_TXOP, hpPriv->txop[0]);
                polluted = 1;
            }
            else
            {
                zfDelayWriteInternalReg(dev, ZM_MAC_REG_AC1_AC0_TXOP, 0x30);
                polluted = 1;
            }

        }
        hpPriv->usbAcSendBytes[3] = 0;
        hpPriv->usbAcSendBytes[2] = 0;
        hpPriv->usbAcSendBytes[1] = 0;
        hpPriv->usbAcSendBytes[0] = 0;
    }

    if (polluted == 1)
    {
        zfFlushDelayWrite(dev);
    }

    return;
}
