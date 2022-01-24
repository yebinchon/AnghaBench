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
typedef  int u64_t ;
typedef  int /*<<< orphan*/  u32_t ;
struct zsHpPriv {int camRollCallTable; } ;
struct TYPE_2__ {struct zsHpPriv* hpPrivate; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZM_MAC_REG_ROLL_CALL_TBL_H ; 
 int /*<<< orphan*/  ZM_MAC_REG_ROLL_CALL_TBL_L ; 
 TYPE_1__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(zdev_t* dev)
{
    struct zsHpPriv* hpPriv;

    FUNC2(dev);
    hpPriv=wd->hpPrivate;

    if (hpPriv->camRollCallTable != (u64_t) 0)
    {
        FUNC0(dev, ZM_MAC_REG_ROLL_CALL_TBL_L, (u32_t)(hpPriv->camRollCallTable & 0xffffffff));
        FUNC0(dev, ZM_MAC_REG_ROLL_CALL_TBL_H, (u32_t)((hpPriv->camRollCallTable >> 32) & 0xffffffff));
        FUNC1(dev);
    }
}