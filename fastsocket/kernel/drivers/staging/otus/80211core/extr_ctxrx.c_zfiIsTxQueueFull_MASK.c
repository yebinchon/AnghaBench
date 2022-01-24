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
typedef  int u8_t ;
struct TYPE_2__ {int* vtxqHead; int* vtxqTail; } ;

/* Variables and functions */
 int ZM_VTXQ_SIZE_MASK ; 
 TYPE_1__* wd ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

u8_t FUNC4(zdev_t* dev)
{
    FUNC2(dev);
    FUNC0();

    FUNC1(dev);
    if ((((wd->vtxqHead[0] + 1) & ZM_VTXQ_SIZE_MASK) != wd->vtxqTail[0]) )
    {
        FUNC3(dev);
        return 0;
    }
    else
    {
        FUNC3(dev);
        return 1;
    }
}