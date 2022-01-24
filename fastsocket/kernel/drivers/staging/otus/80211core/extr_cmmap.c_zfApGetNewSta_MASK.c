#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  size_t u16_t ;
struct TYPE_5__ {TYPE_1__* staTable; } ;
struct TYPE_6__ {TYPE_2__ ap; } ;
struct TYPE_4__ {scalar_t__ valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZM_LV_0 ; 
 size_t ZM_MAX_STA_SUPPORT ; 
 TYPE_3__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

u16_t FUNC2(zdev_t* dev)
{
    u16_t i;

    FUNC1(dev);

    for (i=0; i<ZM_MAX_STA_SUPPORT; i++)
    {
        if (wd->ap.staTable[i].valid == 0)
        {
            FUNC0(ZM_LV_0, "zfApGetNewSta=", i);
            return i;
        }
    }
    return 0xffff;
}