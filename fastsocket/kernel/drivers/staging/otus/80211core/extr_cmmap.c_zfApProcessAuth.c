
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef int u32_t ;
typedef int u16_t ;
struct TYPE_3__ {int* authAlgo; int authSharing; scalar_t__* challengeText; } ;
struct TYPE_4__ {TYPE_1__ ap; } ;


 int ZM_LV_0 ;
 int ZM_STATE_AUTH ;
 int ZM_STATE_PREAUTH ;
 int ZM_WLAN_FRAME_TYPE_AUTH ;
 TYPE_2__* wd ;
 int zfApAddSta (int *,int*,int ,int,int ,int ,int ) ;
 int zfSendMmFrame (int *,int ,int*,int,int,int) ;
 int zm_msg2_mm (int ,char*,int) ;
 scalar_t__ zmw_buf_readb (int *,int *,int) ;
 int zmw_buf_readh (int *,int *,int) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;
 int zmw_rx_buf_readb (int *,int *,int) ;
 int zmw_rx_buf_readh (int *,int *,int) ;

void zfApProcessAuth(zdev_t* dev, zbuf_t* buf, u16_t* src, u16_t apId)
{
    u16_t algo, seq, status;
    u8_t authSharing;
    u16_t ret;
    u16_t i;
    u8_t challengePassed = 0;
    u8_t frameCtrl;
    u32_t retAlgoSeq;
    u32_t retStatus;
    zmw_get_wlan_dev(dev);
    zmw_declare_for_critical_section();


    frameCtrl = zmw_rx_buf_readb(dev, buf, 1);


    if ((frameCtrl & 0x40) != 0)
    {
        algo = zmw_rx_buf_readh(dev, buf, 28);
        seq = zmw_rx_buf_readh(dev, buf, 30);
        status = zmw_rx_buf_readh(dev, buf, 32);
    }
    else
    {
        algo = zmw_rx_buf_readh(dev, buf, 24);
        seq = zmw_rx_buf_readh(dev, buf, 26);
        status = zmw_rx_buf_readh(dev, buf, 28);
    }

    zm_msg2_mm(ZM_LV_0, "Rx Auth, seq=", seq);


    retAlgoSeq = 0x20000 | algo;
    retStatus = 13;


    if (algo == 0)
    {
        if (wd->ap.authAlgo[apId] == 0)
        {
            retAlgoSeq = 0x20000;
            if (seq == 1)
            {

                if ((ret = zfApAddSta(dev, src, ZM_STATE_AUTH, apId, 0, 0, 0)) != 0xffff)
                {




                    retStatus = 0;

                }
                else
                {

                    retStatus = 1;
                }
            }
            else
            {

                retStatus = 14;
            }
        }
    }

    else if (algo == 1)
    {
        if (wd->ap.authAlgo[apId] == 1)
        {
            if (seq == 1)
            {
                retAlgoSeq = 0x20001;


                zmw_enter_critical_section(dev);
                if (wd->ap.authSharing == 1)
                {
                    authSharing = 1;
                }
                else
                {
                    authSharing = 0;
                    wd->ap.authSharing = 1;
                }

                zmw_leave_critical_section(dev);

                if (authSharing == 1)
                {

                    retStatus = 1;
                }
                else
                {

                    zfApAddSta(dev, src, ZM_STATE_PREAUTH, apId, 0, 0, 0);





                    retStatus = 0;
                }
            }
            else if (seq == 3)
            {
                retAlgoSeq = 0x40001;

                if (wd->ap.authSharing == 1)
                {

                    if (zmw_buf_readh(dev, buf, 30+4) == 0x8010)
                    {
                        for (i=0; i<128; i++)
                        {
                            if (wd->ap.challengeText[i]
                                        != zmw_buf_readb(dev, buf, 32+i+4))
                            {
                                break;
                            }
                        }
                        if (i == 128)
                        {
                            challengePassed = 1;
                        }
                    }

                    if (challengePassed == 1)
                    {

                        zfApAddSta(dev, src, ZM_STATE_AUTH, apId, 0, 0, 0);


                        retStatus = 0;
                    }
                    else
                    {

                        retStatus = 15;


                    }

                    wd->ap.authSharing = 0;
                }
            }
            else
            {
                retAlgoSeq = 0x40001;
                retStatus = 14;
            }
        }
    }

    zfSendMmFrame(dev, ZM_WLAN_FRAME_TYPE_AUTH, src, retAlgoSeq,
            retStatus, apId);
    return;
}
