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
typedef  scalar_t__ u16_t ;
struct TYPE_2__ {scalar_t__ wlanMode; } ;

/* Variables and functions */
 scalar_t__ ZM_MODE_AP ; 
 TYPE_1__* wd ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

u16_t FUNC6(zdev_t* dev, zbuf_t* buf)
{
    u16_t id;
    u16_t dst[3];

    FUNC3(dev);

    FUNC1();

    dst[0] = FUNC5(dev, buf, 0);
    dst[1] = FUNC5(dev, buf, 2);
    dst[2] = FUNC5(dev, buf, 4);

    FUNC2(dev);

    if(wd->wlanMode == ZM_MODE_AP) {
        id = FUNC0(dev, dst);
    }
    else {
        id = 0;
    }
    FUNC4(dev);

#if ZM_AGG_FPGA_DEBUG
    id = 0;
#endif

    return id;
}