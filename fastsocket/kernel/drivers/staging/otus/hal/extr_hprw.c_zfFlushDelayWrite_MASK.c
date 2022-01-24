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
typedef  int u32_t ;
typedef  int u16_t ;
struct TYPE_3__ {int delayWcmdCount; int* delayWcmdAddr; int* delayWcmdVal; } ;
struct zsHpPriv {TYPE_1__ cmd; } ;
struct TYPE_4__ {struct zsHpPriv* hpPrivate; } ;

/* Variables and functions */
 int ZM_MAX_CMD_SIZE ; 
 int /*<<< orphan*/  ZM_OID_INTERNAL_WRITE ; 
 TYPE_2__* wd ; 
 int FUNC0 (int /*<<< orphan*/ *,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

u16_t FUNC5(zdev_t* dev)
{
    u32_t cmd[(ZM_MAX_CMD_SIZE/4)];
    u16_t i;
    u16_t ret;
    struct zsHpPriv* hpPriv;

    FUNC3(dev);
    hpPriv=wd->hpPrivate;

    FUNC1();

    /* enter critical section */
    FUNC2(dev);

    /* If there is pending command */
    if (hpPriv->cmd.delayWcmdCount > 0)
    {
        cmd[0] = 0x00000100 + (hpPriv->cmd.delayWcmdCount<<3);

        /* copy command to cmd buffer */
        for (i=0; i<hpPriv->cmd.delayWcmdCount; i++)
        {
            cmd[1+(i<<1)] = hpPriv->cmd.delayWcmdAddr[i];
            cmd[2+(i<<1)] = hpPriv->cmd.delayWcmdVal[i];
        }
        /* reset pending command */
        hpPriv->cmd.delayWcmdCount = 0;

        /* leave critical section */
        FUNC4(dev);

        /* issue write command */
        ret = FUNC0(dev, cmd, 4+(i<<3), ZM_OID_INTERNAL_WRITE, NULL);

        return 1;
    }
    else
    {
        /* leave critical section */
        FUNC4(dev);

        return 0;
    }
}