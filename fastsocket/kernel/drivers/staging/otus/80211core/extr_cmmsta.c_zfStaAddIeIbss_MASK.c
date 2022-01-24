#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int /*<<< orphan*/  zbuf_t ;
typedef  scalar_t__ u16_t ;
struct TYPE_3__ {int /*<<< orphan*/  atimWindow; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;

/* Variables and functions */
 int ZM_WLAN_EID_IBSS ; 
 TYPE_2__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

u16_t FUNC3(zdev_t* dev, zbuf_t* buf, u16_t offset)
{
    FUNC0(dev);

    /* Element ID */
    FUNC1(dev, buf, offset++, ZM_WLAN_EID_IBSS);

    /* Element Length */
    FUNC1(dev, buf, offset++, 2);

    /* ATIM window */
    FUNC2(dev, buf, offset, wd->sta.atimWindow);
    offset += 2;

    return offset;
}