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
typedef  int u16_t ;
struct TYPE_3__ {scalar_t__ DFSDisableTx; int rxBeaconCount; int /*<<< orphan*/  currentFrequency; } ;
struct TYPE_4__ {TYPE_1__ sta; int /*<<< orphan*/  frequency; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  ZM_WLAN_EID_CHANNEL_SWITCH_ANNOUNCE ; 
 TYPE_2__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC10(zdev_t* dev, zbuf_t* buf)
{
    //u8_t    length, channel, is5G;
    u16_t   offset;

    FUNC8(dev);

    /*
    Channel Switch Announcement Element Format
    +------+----------+------+-------------------+------------------+--------------------+
    |Format|Element ID|Length|Channel Switch Mode|New Channel Number|Channel Switch Count|
    +------+----------+------+-------------------+------------------+--------------------+
    |Bytes |   1      |  1   |	     1           |       1          |          1         |
    +------+----------+------+-------------------+------------------+--------------------+
    |Value |   37     |  3   |       0 or 1      |unsigned integer  |unsigned integer    |
    +------+----------+------+-------------------+------------------+--------------------+
    */

    /* get EID(Channel Switch Announcement) */
    if ( (offset = FUNC2(dev, buf, ZM_WLAN_EID_CHANNEL_SWITCH_ANNOUNCE)) == 0xffff )
    {
        //zm_debug_msg0("EID(Channel Switch Announcement) not found");
        return;
    }
    else if ( FUNC9(dev, buf, offset+1) == 0x3 )
    {
        FUNC6("EID(Channel Switch Announcement) found");

        //length = zmw_rx_buf_readb(dev, buf, offset+1);
        //zfCopyFromRxBuffer(dev, buf, pBssInfo->supportedRates, offset, length+2);

        //Chanell Switch Mode set to 1, driver should disable transmit immediate
        //we do this by poll CCA high
        if (FUNC9(dev, buf, offset+2) == 0x1 )
        {
        	//use ZM_OID_INTERNAL_WRITE,ZM_CMD_RESET to notice firmware flush quene and stop dma,
        	//then restart rx dma but not tx dma
        	if (wd->sta.DFSDisableTx != TRUE)
        	{
                /* TODO : zfHpResetTxRx would cause Rx hang */
                //zfHpResetTxRx(dev);
                wd->sta.DFSDisableTx = TRUE;
                /* Trgger Rx DMA */
                FUNC4(dev);
            }
        	//Adapter->ZD80211HSetting.DisableTxBy80211H=TRUE;
        	//AcquireCtrOfPhyReg(Adapter);
        	//ZD1205_WRITE_REGISTER(Adapter,CR24, 0x0);
        	//ReleaseDoNotSleep(Adapter);
        }

        if (FUNC9(dev, buf, offset+4) <= 0x2 )
        {
        	//Channel Switch
        	//if Channel Switch Count = 0 , STA should change channel immediately.
        	//if Channel Switch Count > 0 , STA should change channel after TBTT*count
        	//But it won't be accurate to let driver calculate TBTT*count, and the value of
        	//Channel Switch Count will decrease by one each when continue receving beacon
        	//So we change channel here when we receive count <=2.

            FUNC3(dev, wd->sta.currentFrequency);
        	wd->frequency = FUNC0(dev, FUNC9(dev, buf, offset+3), 0);
        	//zfHpAddAllowChannel(dev, wd->frequency);
        	FUNC7("CWY - jump to frequency = ", wd->frequency);
        	FUNC1(dev, wd->frequency);
        	wd->sta.DFSDisableTx = FALSE;
            /* Increase rxBeaconCount to prevent beacon lost */
            if (FUNC5(dev))
            {
                wd->sta.rxBeaconCount = 1 << 6; // 2 times of check would pass
            }
        	//start tx dma to transmit packet

        	//if (zmw_rx_buf_readb(dev, buf, offset+3) != wd->frequency)
        	//{
        	//	//ZDDbgPrint(("Radar Detect by AP\n"));
        	//	zfCoreSetFrequency();
        	//	ProcessRadarDetectEvent(Adapter);
        	//	Set_RF_Channel(Adapter, SwRfd->Rfd->RxBuffer[index+3], (UCHAR)Adapter->RF_Mode, 1);
        	//	Adapter->CardSetting.Channel = SwRfd->Rfd->RxBuffer[index+3];
        	//	Adapter->SaveChannel = Adapter->CardSetting.Channel;
        	//	Adapter->UtilityChannel = Adapter->CardSetting.Channel;
        	//}
        }
    }

}