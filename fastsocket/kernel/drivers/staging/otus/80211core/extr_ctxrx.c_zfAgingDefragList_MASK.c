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
struct TYPE_5__ {TYPE_1__* defragEntry; } ;
struct TYPE_6__ {int tick; TYPE_2__ defragTable; } ;
struct TYPE_4__ {scalar_t__ fragCount; int tick; int /*<<< orphan*/ * fragment; } ;

/* Variables and functions */
 int ZM_DEFRAG_AGING_TIME_SEC ; 
 int /*<<< orphan*/  ZM_LV_2 ; 
 size_t ZM_MAX_DEFRAG_ENTRIES ; 
 int ZM_TICK_PER_SECOND ; 
 TYPE_3__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(zdev_t* dev, u16_t flushFlag)
{
    u16_t i, j;
    FUNC4(dev);
    FUNC2();

    FUNC3(dev);

    for(i=0; i<ZM_MAX_DEFRAG_ENTRIES; i++)
    {
        if (wd->defragTable.defragEntry[i].fragCount != 0 )
        {
            if (((wd->tick - wd->defragTable.defragEntry[i].tick) >
                        (ZM_DEFRAG_AGING_TIME_SEC * ZM_TICK_PER_SECOND))
               || (flushFlag != 0))
            {
                FUNC1(ZM_LV_2, "Aging defrag list :", i);
                /* Free the buffers in the defrag list */
                for (j=0; j<wd->defragTable.defragEntry[i].fragCount; j++)
                {
                    FUNC0(dev, wd->defragTable.defragEntry[i].fragment[j], 0);
                }
            }
        }
        wd->defragTable.defragEntry[i].fragCount = 0;
    }

    FUNC5(dev);

    return;
}