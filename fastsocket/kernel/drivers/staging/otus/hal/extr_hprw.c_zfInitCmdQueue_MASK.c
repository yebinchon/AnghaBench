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
struct TYPE_3__ {scalar_t__ delayWcmdCount; } ;
struct zsHpPriv {TYPE_1__ cmd; scalar_t__ cmdPending; scalar_t__ cmdHead; scalar_t__ cmdTail; scalar_t__ cmdSend; } ;
struct TYPE_4__ {scalar_t__ hpPrivate; } ;

/* Variables and functions */
 TYPE_2__* wd ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(zdev_t* dev)
{
    struct zsHpPriv* hpPriv;

    FUNC2(dev);
    hpPriv = (struct zsHpPriv*)(wd->hpPrivate);

    FUNC0();

    FUNC1(dev);
#ifdef ZM_XP_USB_MULTCMD
    hpPriv->cmdTail = hpPriv->cmdHead = hpPriv->cmdSend = 0;
#else
    hpPriv->cmdTail = hpPriv->cmdHead = 0;
#endif
    hpPriv->cmdPending = 0;
    hpPriv->cmd.delayWcmdCount = 0;
    FUNC3(dev);
}