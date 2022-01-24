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
struct TYPE_2__ {int /*<<< orphan*/  frequency; } ;

/* Variables and functions */
 int ZM_WLAN_EID_DS ; 
 TYPE_1__* wd ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

u16_t FUNC3(zdev_t* dev, zbuf_t* buf, u16_t offset)
{
    FUNC1(dev);

    /* Element ID */
    FUNC2(dev, buf, offset++, ZM_WLAN_EID_DS);

    /* Element Length */
    FUNC2(dev, buf, offset++, 1);

    /* Information : DS */
    FUNC2(dev, buf, offset++,
                         FUNC0(wd->frequency, NULL));

    return offset;
}