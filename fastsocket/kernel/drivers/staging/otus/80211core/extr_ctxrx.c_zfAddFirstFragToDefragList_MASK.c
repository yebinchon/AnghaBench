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
typedef  int /*<<< orphan*/  zbuf_t ;
typedef  int /*<<< orphan*/  u8_t ;
typedef  size_t u16_t ;
struct TYPE_5__ {TYPE_1__* defragEntry; int /*<<< orphan*/  replaceNum; } ;
struct TYPE_6__ {TYPE_2__ defragTable; int /*<<< orphan*/  tick; } ;
struct TYPE_4__ {size_t fragCount; size_t seqNum; int /*<<< orphan*/ * addr; int /*<<< orphan*/  tick; int /*<<< orphan*/ ** fragment; } ;

/* Variables and functions */
 size_t ZM_MAX_DEFRAG_ENTRIES ; 
 TYPE_3__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(zdev_t* dev, zbuf_t* buf, u8_t* addr, u16_t seqNum)
{
    u16_t i, j;
    FUNC3(dev);
    FUNC1();

    FUNC2(dev);

    /* Find an empty one in defrag list */
    for(i=0; i<ZM_MAX_DEFRAG_ENTRIES; i++)
    {
        if ( wd->defragTable.defragEntry[i].fragCount == 0 )
        {
            break;
        }
    }

    /* If full, sequentially replace existing one */
    if (i == ZM_MAX_DEFRAG_ENTRIES)
    {
        i = wd->defragTable.replaceNum++ & (ZM_MAX_DEFRAG_ENTRIES-1);
        /* Free the buffers in the defrag list to be replaced */
        for (j=0; j<wd->defragTable.defragEntry[i].fragCount; j++)
        {
            FUNC0(dev, wd->defragTable.defragEntry[i].fragment[j], 0);
        }
    }

    wd->defragTable.defragEntry[i].fragCount = 1;
    wd->defragTable.defragEntry[i].fragment[0] = buf;
    wd->defragTable.defragEntry[i].seqNum = seqNum;
    wd->defragTable.defragEntry[i].tick = wd->tick;

    for (j=0; j<6; j++)
    {
        wd->defragTable.defragEntry[i].addr[j] = addr[j];
    }

    FUNC4(dev);

    return;
}