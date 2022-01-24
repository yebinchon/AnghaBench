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
typedef  size_t u8_t ;
typedef  int u16_t ;
struct TYPE_5__ {size_t allowChannelCnt; TYPE_1__* allowChannel; } ;
struct TYPE_6__ {TYPE_2__ regulationTable; } ;
struct TYPE_4__ {int channel; } ;

/* Variables and functions */
 TYPE_3__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

u16_t FUNC1(zdev_t* dev)
{
    u8_t    i;

    FUNC0(dev);

    for( i=0; i<wd->regulationTable.allowChannelCnt; i++ )
    {
        if ( wd->regulationTable.allowChannel[i].channel < 3000 )
        {
            /* find the first 2Ghz channel */
            return wd->regulationTable.allowChannel[i].channel;
        }
    }

    /* Can not find any 2Ghz channel */
    return 0;
}