
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef int u32_t ;
typedef scalar_t__ u16_t ;
struct zsHpPriv {size_t cmdTail; size_t cmdHead; int isSiteSurvey; scalar_t__ freqRetryCounter; int recordFreqRetryCounter; int coldResetNeedFreq; int setValueHeavyClip; int OpFlags; int eepromImageIndex; int* eepromImage; int ctlBusy; int extBusy; scalar_t__ halReInit; int eepromImageRdReq; int halCapability; scalar_t__ hwBBHeavyClip; scalar_t__ doBBHeavyClip; scalar_t__ enableBBHeavyClip; int latestExtOffset; int latestBw40; int latestFrequency; scalar_t__ cmdPending; TYPE_1__* cmdQ; } ;
typedef int s32_t ;
struct TYPE_5__ {int* ledMode; } ;
struct TYPE_6__ {struct zsHpPriv* hpPrivate; scalar_t__ aniEnable; TYPE_2__ ledStruct; } ;
struct TYPE_4__ {scalar_t__ cmdLen; int* cmd; } ;


 scalar_t__ NO_ENUMRD ;
 scalar_t__ ZM_ANI_READ ;
 scalar_t__ ZM_CMD_ECHO ;
 scalar_t__ ZM_CMD_SET_FREQUENCY ;
 scalar_t__ ZM_CMD_SET_KEY ;
 scalar_t__ ZM_CWM_READ ;
 scalar_t__ ZM_EEPROM_READ ;
 scalar_t__ ZM_EEPROM_WRITE ;
 scalar_t__ ZM_HAL_MAX_EEPROM_PRQ ;
 scalar_t__ ZM_HAL_MAX_EEPROM_REQ ;
 int ZM_HP_CAP_11N_ONE_TX_STREAM ;
 int ZM_HP_CAP_2G ;
 int ZM_HP_CAP_5G ;
 int ZM_LV_0 ;
 scalar_t__ ZM_MAC_READ ;
 int ZM_MAC_REG_MAC_ADDR_H ;
 int ZM_MAC_REG_MAC_ADDR_L ;
 int ZM_MAX_CMD_SIZE ;
 scalar_t__ ZM_OID_DKTX_STATUS ;
 scalar_t__ ZM_OID_FLASH_CHKSUM ;
 scalar_t__ ZM_OID_FLASH_PROGRAM ;
 scalar_t__ ZM_OID_FLASH_READ ;
 scalar_t__ ZM_OID_FW_DL_INIT ;
 scalar_t__ ZM_OID_READ ;
 scalar_t__ ZM_OID_TALLY ;
 scalar_t__ ZM_OID_TALLY_APD ;
 scalar_t__ ZM_OID_WRITE ;
 int ZM_PERFORMANCE_REG (int *,int,int) ;
 int abs (int) ;
 TYPE_3__* wd ;
 int zfCollectHWTally (int *,int*,int) ;
 int zfCoreCwmBusy (int *,int ) ;
 int zfCoreHalInitComplete (int *) ;
 int zfCoreMacAddressNotify (int *,int*) ;
 int zfCoreSetFrequencyComplete (int *) ;
 int zfCoreSetKeyComplete (int *) ;
 int zfCwmIsExtChanBusy (int,int) ;
 int zfDelayWriteInternalReg (int *,int,int) ;
 int zfFlushDelayWrite (int *) ;
 scalar_t__ zfGetCmd (int *,int*,scalar_t__*,scalar_t__*,int**) ;
 int zfHpAniArPoll (int *,int,int,int) ;
 int zfHpGetRegulationTablefromCountry (int *,scalar_t__) ;
 int zfHpGetRegulationTablefromRegionCode (int *,scalar_t__) ;
 int zfHpLoadEEPROMFromFW (int *) ;
 int zfHpSetFrequencyEx (int *,int ,int ,int ,int) ;
 int zfIdlCmd (int *,int*,scalar_t__) ;
 int zfRateCtrlAggrSta (int *) ;
 int zfwDbgDownloadFwInitDone (int *) ;
 int zfwDbgGetFlashChkSumDone (int *,int*) ;
 int zfwDbgQueryHwTxBusyDone (int *,int) ;
 int zfwDbgReadFlashDone (int *,int,int*,int) ;
 int zfwDbgReadRegDone (int *,int,int) ;
 int zfwDbgReadTallyDone (int *) ;
 int zfwDbgWriteEepromDone (int *,int,int) ;
 int zfwDbgWriteRegDone (int *,int,int) ;
 int zm_assert (int) ;
 int zm_debug_msg0 (char*) ;
 int zm_debug_msg1 (char*,int) ;
 int zm_debug_msg2 (char*,int) ;
 int zm_msg0_mm (int ,char*) ;
 int zm_msg2_mm (int ,char*,int) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfIdlRsp(zdev_t* dev, u32_t* rsp, u16_t rspLen)
{
    u32_t cmd[ZM_MAX_CMD_SIZE/4];
    u16_t cmdLen;
    u16_t src;
    u8_t* buf;
    u32_t ncmd[ZM_MAX_CMD_SIZE/4];
    u16_t ncmdLen = 0;
    u16_t ret;
    u16_t cmdFlag = 0;
    u16_t i;
    s32_t nf;
    s32_t noisefloor[4];
    struct zsHpPriv* hpPriv;

    zmw_get_wlan_dev(dev);
    hpPriv=wd->hpPrivate;


    zmw_declare_for_critical_section();

    zmw_enter_critical_section(dev);

    ret = zfGetCmd(dev, cmd, &cmdLen, &src, &buf);



    if (ret != 0)
    {
        zm_debug_msg0("Error IdlRsp because none cmd!!\n");

        zmw_leave_critical_section(dev);
        return;

    }




    if (hpPriv->cmdTail != hpPriv->cmdHead)
    {
        cmdFlag = 1;

        ncmdLen= hpPriv->cmdQ[hpPriv->cmdHead].cmdLen;
        for (i=0; i<(ncmdLen>>2); i++)
        {
            ncmd[i] = hpPriv->cmdQ[hpPriv->cmdHead].cmd[i];
        }
    }
    else
    {
        hpPriv->cmdPending = 0;
    }

    zmw_leave_critical_section(dev);

    if (cmdFlag == 1)
    {
        zfIdlCmd(dev, ncmd, ncmdLen);
    }

    if (src == ZM_OID_READ)
    {
        ZM_PERFORMANCE_REG(dev, 0x11772c, rsp[1]);
        zfwDbgReadRegDone(dev, cmd[1], rsp[1]);
    }
    else if (src == ZM_OID_FLASH_CHKSUM)
    {
        zfwDbgGetFlashChkSumDone(dev, rsp+1);
    }
    else if (src == ZM_OID_FLASH_READ)
    {
        u32_t datalen;
        u16_t i;

        datalen = (rsp[0] & 255);

        zfwDbgReadFlashDone(dev, cmd[1], rsp+1, datalen);
    }
    else if (src == ZM_OID_FLASH_PROGRAM)
    {

    }
    else if (src == ZM_OID_WRITE)
    {
        zfwDbgWriteRegDone(dev, cmd[1], cmd[2]);
    }
    else if (src == ZM_OID_TALLY)
    {
  zfCollectHWTally(dev, rsp, 0);
    }
    else if (src == ZM_OID_TALLY_APD)
    {
  zfCollectHWTally(dev, rsp, 1);
        zfwDbgReadTallyDone(dev);



    }
    else if (src == ZM_OID_DKTX_STATUS)
    {
        zm_debug_msg0("src = zm_OID_DKTX_STATUS");
        zfwDbgQueryHwTxBusyDone(dev, rsp[1]);
    }
    else if (src == ZM_CMD_SET_FREQUENCY)
    {
        if ( (rsp[1] & 0x1) || (rsp[1] & 0x4) )
        {
            zm_debug_msg1("Set Frequency fail : ret = ", rsp[1]);




            if ( hpPriv->isSiteSurvey == 2 )
            {
                if ( hpPriv->recordFreqRetryCounter < 2 )
                {

                    zfHpSetFrequencyEx(dev, hpPriv->latestFrequency,
                                            hpPriv->latestBw40,
                                            hpPriv->latestExtOffset,
                                            2);
                    hpPriv->recordFreqRetryCounter++;
                    zm_debug_msg1("Retry to issue the frequency change command(cold reset) counter = ", hpPriv->recordFreqRetryCounter);
                }
                else
                {

                    zm_debug_msg0("\n\n\n\n  Fail twice cold reset \n\n\n\n");
                    hpPriv->coldResetNeedFreq = 0;
                    hpPriv->recordFreqRetryCounter = 0;
                    zfCoreSetFrequencyComplete(dev);
                }
            }
            else
            {

                hpPriv->coldResetNeedFreq = 1;
                hpPriv->recordFreqRetryCounter = 0;
                zfCoreSetFrequencyComplete(dev);
            }
        }
        else if (rsp[1] & 0x2)
        {
            zm_debug_msg1("Set Frequency fail 2 : ret = ", rsp[1]);



            if ( hpPriv->isSiteSurvey == 2 )
            {
                if ( hpPriv->recordFreqRetryCounter < 1 )
                {

                    zfHpSetFrequencyEx(dev, hpPriv->latestFrequency,
                                            hpPriv->latestBw40,
                                            hpPriv->latestExtOffset,
                                            2);
                    hpPriv->recordFreqRetryCounter++;
                    zm_debug_msg1("2 Retry to issue the frequency change command(cold reset) counter = ", hpPriv->recordFreqRetryCounter);
                }
                else
                {

                    zm_debug_msg0("\n\n\n\n  2 Fail twice cold reset \n\n\n\n");
                    hpPriv->coldResetNeedFreq = 0;
                    hpPriv->recordFreqRetryCounter = 0;
                    zfCoreSetFrequencyComplete(dev);
                }
            }
            else
            {

                hpPriv->coldResetNeedFreq = 0;
                hpPriv->recordFreqRetryCounter = 0;
                zfCoreSetFrequencyComplete(dev);
            }
        }







        else
        {

            zm_debug_msg2(" return complete, ret = ", rsp[1]);


            if (hpPriv->enableBBHeavyClip && hpPriv->hwBBHeavyClip &&
                hpPriv->doBBHeavyClip)
            {
                u32_t setValue = 0x200;

                setValue |= hpPriv->setValueHeavyClip;



                zfDelayWriteInternalReg(dev, 0x99e0+0x1bc000, setValue);
                zfFlushDelayWrite(dev);
            }

            hpPriv->coldResetNeedFreq = 0;
            hpPriv->recordFreqRetryCounter = 0;
         zfCoreSetFrequencyComplete(dev);
     }



        nf = ((rsp[2]>>19) & 0x1ff);
        if ((nf & 0x100) != 0x0)
        {
            noisefloor[0] = 0 - ((nf ^ 0x1ff) + 1);
        }
        else
        {
            noisefloor[0] = nf;
        }



        nf = ((rsp[3]>>19) & 0x1ff);
        if ((nf & 0x100) != 0x0)
        {
            noisefloor[1] = 0 - ((nf ^ 0x1ff) + 1);
        }
        else
        {
            noisefloor[1] = nf;
        }



        nf = ((rsp[5]>>23) & 0x1ff);
        if ((nf & 0x100) != 0x0)
        {
            noisefloor[2] = 0 - ((nf ^ 0x1ff) + 1);
        }
        else
        {
            noisefloor[2] = nf;
        }



        nf = ((rsp[6]>>23) & 0x1ff);
        if ((nf & 0x100) != 0x0)
        {
            noisefloor[3] = 0 - ((nf ^ 0x1ff) + 1);
        }
        else
        {
            noisefloor[3] = nf;
        }





    }
    else if (src == ZM_CMD_SET_KEY)
    {
        zfCoreSetKeyComplete(dev);
    }
    else if (src == ZM_CWM_READ)
    {
        zm_msg2_mm(ZM_LV_0, "CWM rsp[1]=", rsp[1]);
        zm_msg2_mm(ZM_LV_0, "CWM rsp[2]=", rsp[2]);
        zfCoreCwmBusy(dev, zfCwmIsExtChanBusy(rsp[1], rsp[2]));
    }
    else if (src == ZM_MAC_READ)
    {







        u8_t addr[6], CCS, WWR;
        u16_t CountryDomainCode;
        zm_msg2_mm(ZM_LV_0, "MAC rsp[1]=", rsp[1]);
        zm_msg2_mm(ZM_LV_0, "MAC rsp[2]=", rsp[2]);

        addr[0] = (u8_t)(rsp[1] & 0xff);
        addr[1] = (u8_t)((rsp[1]>>8) & 0xff);
        addr[2] = (u8_t)((rsp[1]>>16) & 0xff);
        addr[3] = (u8_t)((rsp[1]>>24) & 0xff);
        addr[4] = (u8_t)(rsp[2] & 0xff);
        addr[5] = (u8_t)((rsp[2]>>8) & 0xff);
        zfDelayWriteInternalReg(dev, ZM_MAC_REG_MAC_ADDR_L,
                ((((u32_t)addr[3])<<24) | (((u32_t)addr[2])<<16) | (((u32_t)addr[1])<<8) | addr[0]));
        zfDelayWriteInternalReg(dev, ZM_MAC_REG_MAC_ADDR_H,
                ((((u32_t)addr[5])<<8) | addr[4]));
        zfFlushDelayWrite(dev);

        wd->ledStruct.ledMode[0] = (u16_t)(rsp[5]&0xffff);
        wd->ledStruct.ledMode[1] = (u16_t)(rsp[5]>>16);
        zm_msg2_mm(ZM_LV_0, "ledMode[0]=", wd->ledStruct.ledMode[0]);
        zm_msg2_mm(ZM_LV_0, "ledMode[1]=", wd->ledStruct.ledMode[1]);


        zm_msg2_mm(ZM_LV_0, "RegDomain rsp=", rsp[3]);
        zm_msg2_mm(ZM_LV_0, "OpFlags+EepMisc=", rsp[4]);
        hpPriv->OpFlags = (u8_t)((rsp[4]>>16) & 0xff);
        if ((rsp[2] >> 24) == 0x1)
        {
            zm_msg0_mm(ZM_LV_0, "OTUS 1x2");
            hpPriv->halCapability |= ZM_HP_CAP_11N_ONE_TX_STREAM;
        }
        else
        {
            zm_msg0_mm(ZM_LV_0, "OTUS 2x2");
        }
        if (hpPriv->OpFlags & 0x1)
        {
            hpPriv->halCapability |= ZM_HP_CAP_5G;
        }
        if (hpPriv->OpFlags & 0x2)
        {
            hpPriv->halCapability |= ZM_HP_CAP_2G;
        }


        CCS = (u8_t)((rsp[3] & 0x8000) >> 15);
        WWR = (u8_t)((rsp[3] & 0x4000) >> 14);
        CountryDomainCode = (u16_t)(rsp[3] & 0x3FFF);

        if (rsp[3] != 0xffffffff)
        {
            if (CCS)
            {

                zfHpGetRegulationTablefromCountry(dev, CountryDomainCode);
            }
            else
            {

                zfHpGetRegulationTablefromRegionCode(dev, CountryDomainCode);
            }
            if (WWR)
            {



            }
        }
        else
        {
            zfHpGetRegulationTablefromRegionCode(dev, NO_ENUMRD);
        }

        zfCoreMacAddressNotify(dev, addr);

    }
    else if (src == ZM_EEPROM_READ)
    {




        for (i=0; i<ZM_HAL_MAX_EEPROM_PRQ; i++)
        {
            if (hpPriv->eepromImageIndex < 1024)
            {
                hpPriv->eepromImage[hpPriv->eepromImageIndex++] = rsp[i+1];
            }
        }

        if (hpPriv->eepromImageIndex == (ZM_HAL_MAX_EEPROM_REQ*ZM_HAL_MAX_EEPROM_PRQ))
        {







            zm_msg2_mm(ZM_LV_0, "MAC [1]=", hpPriv->eepromImage[0x20c/4]);
            zm_msg2_mm(ZM_LV_0, "MAC [2]=", hpPriv->eepromImage[0x210/4]);
            zfCoreHalInitComplete(dev);
        }
        else
        {
            hpPriv->eepromImageRdReq++;
            zfHpLoadEEPROMFromFW(dev);
        }
    }
    else if (src == ZM_EEPROM_WRITE)
    {
        zfwDbgWriteEepromDone(dev, cmd[1], cmd[2]);
    }
    else if (src == ZM_ANI_READ)
    {
        u32_t cycleTime, ctlClear;

        zm_msg2_mm(ZM_LV_0, "ANI rsp[1]=", rsp[1]);
        zm_msg2_mm(ZM_LV_0, "ANI rsp[2]=", rsp[2]);
        zm_msg2_mm(ZM_LV_0, "ANI rsp[3]=", rsp[3]);
        zm_msg2_mm(ZM_LV_0, "ANI rsp[4]=", rsp[4]);

        hpPriv->ctlBusy += rsp[1];
        hpPriv->extBusy += rsp[2];

        cycleTime = 100000;

        if (cycleTime > rsp[1])
        {
            ctlClear = (cycleTime - rsp[1]) / 100;
        }
        else
        {
            ctlClear = 0;
        }
        if (wd->aniEnable)
            zfHpAniArPoll(dev, ctlClear, rsp[3], rsp[4]);
    }
    else if (src == ZM_CMD_ECHO)
    {
        if ( ((struct zsHpPriv*)wd->hpPrivate)->halReInit )
        {
            zfCoreHalInitComplete(dev);
            ((struct zsHpPriv*)wd->hpPrivate)->halReInit = 0;
        }
        else
        {
            zfHpLoadEEPROMFromFW(dev);
        }
    }
    else if (src == ZM_OID_FW_DL_INIT)
    {
        zfwDbgDownloadFwInitDone(dev);
    }
    return;
}
