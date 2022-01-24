#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int /*<<< orphan*/  zbuf_t ;
typedef  int u8_t ;
typedef  int u32_t ;
typedef  int u16_t ;
typedef  scalar_t__ s16_t ;
struct TYPE_2__ {int /*<<< orphan*/  enableHALDbgInfo; } ;

/* Variables and functions */
 TYPE_1__* wd ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

u16_t FUNC3(zdev_t* dev,
                        zbuf_t* buf,
                        u16_t len,
                        u16_t plcpHdrLen,
                        u32_t *rxMT,
                        u32_t *rxMCS,
                        u32_t *rxBW,
                        u32_t *rxSG
                        )
{
    u8_t modulation,mpduInd;
    u16_t low, high, msb;
    s16_t payloadLen = 0;

    FUNC1(dev);

    mpduInd = FUNC2(dev, buf, len-1);
    modulation = FUNC2(dev, buf, (len-1)) & 0x3;
    *rxMT = modulation;

    //zm_debug_msg1(" modulation= ", modulation);
    switch (modulation) {
    case 0: /* CCK Mode */
        low = FUNC2(dev, buf, 2);
        high = FUNC2(dev, buf, 3);
        payloadLen = (low | high << 8) - 4;
        if (wd->enableHALDbgInfo)
        {
            *rxMCS = FUNC2(dev, buf, 0);
            *rxBW  = 0;
            *rxSG  = 0;
        }
        break;
    case 1: /* Legacy-OFDM mode */
        low = FUNC2(dev, buf, 0) >> 5;
        high = FUNC2(dev, buf, 1);
        msb = FUNC2(dev, buf, 2) & 0x1;
        payloadLen = (low | (high << 3) | (msb << 11)) - 4;
        if (wd->enableHALDbgInfo)
        {
            *rxMCS = FUNC0(dev, buf);
            *rxBW  = 0;
            *rxSG  = 0;
        }
        break;
    case 2: /* HT OFDM mode */
        //zm_debug_msg1("aggregation= ", (zmw_rx_buf_readb(dev, buf, 6) >> 3) &0x1 );
        if ((mpduInd & 0x30) == 0x00 || (mpduInd & 0x30) == 0x10)    //single or last mpdu
            payloadLen = len - 24 - 4 - plcpHdrLen;  // - rxStatus - fcs
        else {
            payloadLen = len - 4 - 4 - plcpHdrLen;  // - rxStatus - fcs
            //zm_debug_msg1("first or middle mpdu, plcpHdrLen= ", plcpHdrLen);
        }
        if (wd->enableHALDbgInfo)
        {
            *rxMCS = FUNC2(dev, buf, 3) & 0x7f;
            *rxBW  = (FUNC2(dev, buf, 3) >> 7) & 0x1;
            *rxSG  = (FUNC2(dev, buf, 6) >> 7) & 0x1;
        }
        break;
    default:
        break;

    }
    /* return the payload length - FCS */
    if (payloadLen < 0) payloadLen = 0;
    return payloadLen;
}