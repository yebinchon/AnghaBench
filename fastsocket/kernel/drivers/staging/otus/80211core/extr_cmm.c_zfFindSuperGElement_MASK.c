#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int /*<<< orphan*/  zbuf_t ;
typedef  int u8_t ;
typedef  int u16_t ;

/* Variables and functions */
 int ZM_WLAN_EID_VENDOR_PRIVATE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int* zgElementOffsetTable ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

u16_t FUNC5(zdev_t* dev, zbuf_t* buf, u8_t type)
{
    u8_t subType;
    u16_t offset;
    u16_t bufLen;
    u16_t elen;
    u8_t id;
    u8_t super_feature;
    u8_t ouiSuperG[6] = {0x00,0x03,0x7f,0x01, 0x01, 0x00};

    FUNC3(dev);

    /* Get offset of first element */
    subType = (FUNC4(dev, buf, 0) >> 4);
    if ((offset = zgElementOffsetTable[subType]) == 0xff)
    {
        FUNC2(0);
    }

    /* Plus wlan header */
    offset += 24;

    bufLen = FUNC1(dev, buf);
    /* Search loop */
    while ((offset+2)<bufLen)                   // including element ID and length (2bytes)
    {
        /* Search target element */
        if ((id = FUNC4(dev, buf, offset)) == ZM_WLAN_EID_VENDOR_PRIVATE)
        {
            /* Bingo */
            if ((elen = FUNC4(dev, buf, offset+1))>(bufLen - offset))
            {
                /* Element length error */
                return 0xffff;
            }

            if ( elen == 0 )
            {
                return 0xffff;
            }

            if (FUNC0(dev, buf, ouiSuperG, offset+2, 6) && ( FUNC4(dev, buf, offset+1) >= 6))
            {
                /* super_feature 0:useFastFrame, 1:useCompression, 2:useTurboPrime */
                super_feature= FUNC4(dev, buf, offset+8);
                if ((super_feature & 0x01) || (super_feature & 0x02) || (super_feature & 0x04))
                {
                    return offset;
                }
            }
        }
        /* Advance to next element */
        #if 1
        elen = FUNC4(dev, buf, offset+1);
        #else
        if ((elen = zmw_rx_buf_readb(dev, buf, offset+1)) == 0)
        {
            return 0xffff;
        }
        #endif

        offset += (elen+2);
    }
    return 0xffff;
}