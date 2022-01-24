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
typedef  int /*<<< orphan*/  u8_t ;
struct zsBssInfo {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  ibssBssDesc; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;

/* Variables and functions */
 TYPE_2__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(zdev_t* dev, struct zsBssInfo *pBssInfo)
{
    FUNC1(dev);

    FUNC0((u8_t *)pBssInfo, (u8_t *)&wd->sta.ibssBssDesc, sizeof(struct zsBssInfo));
}