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
typedef  int /*<<< orphan*/  u16_t ;
struct TYPE_2__ {int vmmqHead; int vmmqTail; int /*<<< orphan*/ ** vmmq; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZM_ERR_VMMQ_FULL ; 
 int /*<<< orphan*/  ZM_LV_0 ; 
 int /*<<< orphan*/  ZM_SUCCESS ; 
 int ZM_VMMQ_SIZE_MASK ; 
 TYPE_1__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

u16_t FUNC6(zdev_t* dev, zbuf_t* buf)
{
    FUNC4(dev);
    FUNC2();

    FUNC3(dev);
    if (((wd->vmmqHead + 1) & ZM_VMMQ_SIZE_MASK) != wd->vmmqTail)
    {
        wd->vmmq[wd->vmmqHead] = buf;
        wd->vmmqHead = ((wd->vmmqHead + 1) & ZM_VMMQ_SIZE_MASK);
        FUNC5(dev);
        return ZM_SUCCESS;
    }
    else
    {
        FUNC5(dev);

        FUNC0(dev, buf, ZM_SUCCESS);
        FUNC1(ZM_LV_0, "Packet discarded, VMmQ full");
        return ZM_ERR_VMMQ_FULL; //VTXQ[] Full
    }
}