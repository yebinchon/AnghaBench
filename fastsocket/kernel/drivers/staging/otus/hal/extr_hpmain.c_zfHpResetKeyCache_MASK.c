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
typedef  int u8_t ;
typedef  scalar_t__ u64_t ;
typedef  int /*<<< orphan*/  u32_t ;
typedef  int /*<<< orphan*/  u16_t ;
struct zsHpPriv {scalar_t__ camRollCallTable; } ;
struct TYPE_2__ {struct zsHpPriv* hpPrivate; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZM_MAC_REG_ROLL_CALL_TBL_H ; 
 int /*<<< orphan*/  ZM_MAC_REG_ROLL_CALL_TBL_L ; 
 int /*<<< orphan*/  ZM_WEP64 ; 
 TYPE_1__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

u16_t FUNC4(zdev_t* dev)
{
    u8_t i;
    u32_t key[4] = {0, 0, 0, 0};
    struct zsHpPriv* hpPriv;

    FUNC3(dev);
    hpPriv=wd->hpPrivate;

    for(i=0;i<4;i++)
    {
        FUNC2(dev, i, ZM_WEP64, key, NULL);
    }
    FUNC0(dev, ZM_MAC_REG_ROLL_CALL_TBL_L, 0x00);
    FUNC0(dev, ZM_MAC_REG_ROLL_CALL_TBL_H, 0x00);
    FUNC1(dev);

    hpPriv->camRollCallTable = (u64_t) 0;

    return 0;
}