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
typedef  scalar_t__ u8_t ;
typedef  int /*<<< orphan*/  u16_t ;

/* Variables and functions */
 int ZM_WLAN_EID_POWER_CAPABILITY ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

u16_t FUNC5(zdev_t* dev, zbuf_t* buf, u16_t offset)
{
    u8_t MaxTxPower;
    u8_t MinTxPower;

    FUNC2(dev);

    /* Element ID */
    FUNC3(dev, buf, offset++, ZM_WLAN_EID_POWER_CAPABILITY);

    /* Element Length */
    FUNC3(dev, buf, offset++, 2);

    MinTxPower = (u8_t)(FUNC1(dev)/2);
    MaxTxPower = (u8_t)(FUNC0(dev)/2);

    /* Min Transmit Power Cap */
    FUNC4(dev, buf, offset++, MinTxPower);

    /* Max Transmit Power Cap */
    FUNC4(dev, buf, offset++, MaxTxPower);

    return offset;
}