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
struct TYPE_2__ {int erpElement; } ;

/* Variables and functions */
 int ZM_WLAN_EID_ERP ; 
 TYPE_1__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

u16_t FUNC2(zdev_t* dev, zbuf_t* buf, u16_t offset)
{
    FUNC0(dev);

    /* Element ID */
    FUNC1(dev, buf, offset++, ZM_WLAN_EID_ERP);

    /* Element Length */
    FUNC1(dev, buf, offset++, 1);

    /* Information : ERP */
    FUNC1(dev, buf, offset++, wd->erpElement);

    return offset;
}