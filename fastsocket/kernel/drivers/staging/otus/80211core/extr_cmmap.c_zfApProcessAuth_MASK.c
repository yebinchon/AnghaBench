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
typedef  int u8_t ;
typedef  int u32_t ;
typedef  int u16_t ;
struct TYPE_3__ {int* authAlgo; int authSharing; scalar_t__* challengeText; } ;
struct TYPE_4__ {TYPE_1__ ap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZM_LV_0 ; 
 int /*<<< orphan*/  ZM_STATE_AUTH ; 
 int /*<<< orphan*/  ZM_STATE_PREAUTH ; 
 int /*<<< orphan*/  ZM_WLAN_FRAME_TYPE_AUTH ; 
 TYPE_2__* wd ; 
 int FUNC0 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC11(zdev_t* dev, zbuf_t* buf, u16_t* src, u16_t apId)
{
    u16_t algo, seq, status;
    u8_t authSharing;
    u16_t ret;
    u16_t i;
    u8_t challengePassed = 0;
    u8_t frameCtrl;
    u32_t retAlgoSeq;
    u32_t retStatus;
    FUNC7(dev);
    FUNC5();


    frameCtrl = FUNC9(dev, buf, 1);
    /* AP : Auth share 3 */
    /* shift for WEP IV */
    if ((frameCtrl & 0x40) != 0)
    {
        algo = FUNC10(dev, buf, 28);
        seq = FUNC10(dev, buf, 30);
        status = FUNC10(dev, buf, 32);
    }
    else
    {
        algo = FUNC10(dev, buf, 24);
        seq = FUNC10(dev, buf, 26);
        status = FUNC10(dev, buf, 28);
    }

    FUNC2(ZM_LV_0, "Rx Auth, seq=", seq);

    /* Set default to authentication algorithm not support */
    retAlgoSeq = 0x20000 | algo;
    retStatus = 13; /* authentication algorithm not support */

    /* AP : Auth open 1 */
    if (algo == 0)
    {
        if (wd->ap.authAlgo[apId] == 0)
        {
            retAlgoSeq = 0x20000;
            if (seq == 1)
            {
                /* AP : update STA to auth */
                if ((ret = FUNC0(dev, src, ZM_STATE_AUTH, apId, 0, 0, 0)) != 0xffff)
                {
                    /* AP : call zfwAuthNotify() for host to judge */
                    //zfwAuthNotify(dev, src);

                    /* AP : response Auth seq=2, success */
                    retStatus = 0;

                }
                else
                {
                    /* AP : response Auth seq=2, unspecific error */
                    retStatus = 1;
                }
            }
            else
            {
                /* AP : response Auth seq=2, sequence number out of expected */
                retStatus = 14;
            }
        }
    }
    /* AP : Auth share 1 */
    else if (algo == 1)
    {
        if (wd->ap.authAlgo[apId] == 1)
        {
            if (seq == 1)
            {
                retAlgoSeq = 0x20001;

                /* critical section */
                FUNC6(dev);
                if (wd->ap.authSharing == 1)
                {
                    authSharing = 1;
                }
                else
                {
                    authSharing = 0;
                    wd->ap.authSharing = 1;
                }
                /* end of critical section */
                FUNC8(dev);

                if (authSharing == 1)
                {
                    /* AP : response Auth seq=2, status = fail */
                    retStatus = 1;
                }
                else
                {
                    /* AP : update STA to preauth */
                    FUNC0(dev, src, ZM_STATE_PREAUTH, apId, 0, 0, 0);

                    /* AP : call zfwAuthNotify() for host to judge */
                    //zfwAuthNotify(dev, src);

                    /* AP : response Auth seq=2 */
                    retStatus = 0;
                }
            }
            else if (seq == 3)
            {
                retAlgoSeq = 0x40001;

                if (wd->ap.authSharing == 1)
                {
                    /* check challenge text */
                    if (FUNC4(dev, buf, 30+4) == 0x8010)
                    {
                        for (i=0; i<128; i++)
                        {
                            if (wd->ap.challengeText[i]
                                        != FUNC3(dev, buf, 32+i+4))
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
                        /* AP : update STA to auth */
                        FUNC0(dev, src, ZM_STATE_AUTH, apId, 0, 0, 0);

                        /* AP : response Auth seq=2 */
                        retStatus = 0;
                    }
                    else
                    {
                        /* AP : response Auth seq=2, challenge failure */
                        retStatus = 15;

                        /* TODO : delete STA */
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

    FUNC1(dev, ZM_WLAN_FRAME_TYPE_AUTH, src, retAlgoSeq,
            retStatus, apId);
    return;
}