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
typedef  int /*<<< orphan*/  u8_t ;
typedef  int /*<<< orphan*/  u32_t ;
typedef  scalar_t__ u16_t ;
struct zsHpPriv {int cmdPending; } ;
struct TYPE_2__ {struct zsHpPriv* hpPrivate; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZM_LV_1 ; 
 TYPE_1__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

u16_t FUNC8(zdev_t* dev, u32_t* cmd, u16_t cmdLen, u16_t src, u8_t* buf)
{
    u16_t cmdFlag = 0;
    u16_t ret;
    struct zsHpPriv* hpPriv;

    FUNC6(dev);
    hpPriv=wd->hpPrivate;

    FUNC4();

    FUNC3(ZM_LV_1, "cmdLen=", cmdLen);

    FUNC5(dev);

#ifdef ZM_XP_USB_MULTCMD
    ret = zfPutCmd(dev, cmd, cmdLen, src, buf);
    zmw_leave_critical_section(dev);

    if (ret != 0)
    {
        return 1;
    }

    zfSendCmdEx(dev);
#else
    if (hpPriv->cmdPending == 0)
    {
        hpPriv->cmdPending = 1;
        cmdFlag = 1;
    }
    ret = FUNC1(dev, cmd, cmdLen, src, buf);

    FUNC7(dev);

    if (ret != 0)
    {
        return 1;
    }

    if (cmdFlag == 1)
    {
        FUNC0(dev, cmd, cmdLen);
    }
#endif
    return 0;
}