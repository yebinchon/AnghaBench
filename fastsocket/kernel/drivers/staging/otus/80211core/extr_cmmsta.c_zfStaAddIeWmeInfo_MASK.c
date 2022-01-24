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
typedef  int /*<<< orphan*/  u16_t ;

/* Variables and functions */
 int ZM_WLAN_EID_WIFI_IE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

u16_t FUNC1(zdev_t* dev, zbuf_t* buf, u16_t offset, u8_t qosInfo)
{
    /* Element ID */
    FUNC0(dev, buf, offset++, ZM_WLAN_EID_WIFI_IE);

    /* Element Length */
    FUNC0(dev, buf, offset++, 7);

    /* OUI */
    FUNC0(dev, buf, offset++, 0x00);
    FUNC0(dev, buf, offset++, 0x50);
    FUNC0(dev, buf, offset++, 0xF2);
    FUNC0(dev, buf, offset++, 0x02);
    FUNC0(dev, buf, offset++, 0x00);
    FUNC0(dev, buf, offset++, 0x01);

    /* QoS Info */
    FUNC0(dev, buf, offset++, qosInfo);

    return offset;
}