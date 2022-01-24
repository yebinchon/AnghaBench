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
typedef  int /*<<< orphan*/  u8_t ;
struct zsHpPriv {int /*<<< orphan*/  halRxInfo; } ;
struct zsHalRxInfo {int dummy; } ;
struct TYPE_2__ {scalar_t__ hpPrivate; } ;

/* Variables and functions */
 TYPE_1__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(zdev_t* dev, u8_t *monHalRxInfo)
{
    FUNC1(dev);
    FUNC0(monHalRxInfo,
                (u8_t*)&(((struct zsHpPriv*)wd->hpPrivate)->halRxInfo),
                sizeof(struct zsHalRxInfo));
}