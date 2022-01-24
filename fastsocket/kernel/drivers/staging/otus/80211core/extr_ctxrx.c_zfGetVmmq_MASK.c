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
struct TYPE_2__ {size_t vmmqHead; size_t vmmqTail; int /*<<< orphan*/ ** vmmq; } ;

/* Variables and functions */
 int ZM_VMMQ_SIZE_MASK ; 
 TYPE_1__* wd ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

zbuf_t* FUNC4(zdev_t* dev)
{
    zbuf_t* buf;
    FUNC2(dev);
    FUNC0();

    FUNC1(dev);
    if (wd->vmmqHead != wd->vmmqTail)
    {
        buf = wd->vmmq[wd->vmmqTail];
        wd->vmmqTail = ((wd->vmmqTail + 1) & ZM_VMMQ_SIZE_MASK);
        FUNC3(dev);
        return buf;
    }
    else
    {
        FUNC3(dev);
        return 0; //VTXQ[] empty
    }
}