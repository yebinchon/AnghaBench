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
typedef  int u8_t ;
typedef  int u32_t ;
typedef  int /*<<< orphan*/  u16_t ;

/* Variables and functions */
 int ZM_MAX_CMD_SIZE ; 
 int /*<<< orphan*/  ZM_OID_INTERNAL_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

u16_t FUNC1(zdev_t* dev, u8_t enable)
{
    u32_t cmd[(ZM_MAX_CMD_SIZE/4)];
    u16_t ret = 0;

    cmd[0] = 4 | (0x92 << 8);
    cmd[1] = (enable == 1) ? 0x01 : 0x00;

    ret = FUNC0(dev, cmd, 8, ZM_OID_INTERNAL_WRITE, NULL);
    return ret;
}