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
typedef  int /*<<< orphan*/  zbuf_t ;
typedef  int u8_t ;
struct TYPE_2__ {int queueFlushed; } ;

/* Variables and functions */
 TYPE_1__* wd ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(zdev_t* dev)
{
    zbuf_t* buf;
    u8_t i;
    FUNC5(dev);

    /* Flush MmQ */
    while ((buf = FUNC0(dev)) != 0)
    {
        FUNC2(dev, buf, 0);
        FUNC3("zfFlushVtxq: [Vmmq]");
        wd->queueFlushed  |= 0x10;
    }

    /* Flush VTxQ */
    for (i=0; i<4; i++)
    {
        while ((buf = FUNC1(dev, i)) != 0)
        {
            FUNC2(dev, buf, 0);
            FUNC4("zfFlushVtxq: [zfGetVtxq]- ", i);
            wd->queueFlushed |= (1<<i);
        }
    }
}