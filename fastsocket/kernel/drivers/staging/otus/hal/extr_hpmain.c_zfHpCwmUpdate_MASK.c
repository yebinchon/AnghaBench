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
typedef  int /*<<< orphan*/  u32_t ;
struct zsHpPriv {scalar_t__ extBusy; scalar_t__ ctlBusy; } ;
struct TYPE_2__ {struct zsHpPriv* hpPrivate; } ;

/* Variables and functions */
 TYPE_1__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

u32_t FUNC3(zdev_t* dev)
{
    //u32_t cmd[3];
    //u16_t ret;
    //
    //cmd[0] = 0x00000008;
    //cmd[1] = 0x1c36e8;
    //cmd[2] = 0x1c36ec;
    //
    //ret = zfIssueCmd(dev, cmd, 12, ZM_CWM_READ, 0);
    //return ret;

    struct zsHpPriv* hpPriv;

    FUNC2(dev);
    hpPriv=wd->hpPrivate;

    FUNC0(dev, FUNC1(hpPriv->ctlBusy, hpPriv->extBusy));

    hpPriv->ctlBusy = 0;
    hpPriv->extBusy = 0;

    return 0;
}