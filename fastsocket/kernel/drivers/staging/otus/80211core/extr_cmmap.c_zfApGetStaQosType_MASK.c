#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int /*<<< orphan*/  u8_t ;
typedef  int u16_t ;
struct TYPE_5__ {TYPE_1__* staTable; } ;
struct TYPE_6__ {TYPE_2__ ap; } ;
struct TYPE_4__ {int /*<<< orphan*/  qosType; } ;

/* Variables and functions */
 TYPE_3__* wd ; 
 int FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(zdev_t* dev, u16_t* addr, u8_t* qosType)
{
    u16_t id;

    FUNC3(dev);

    FUNC1();

    FUNC2(dev);

    if ((id = FUNC0(dev, addr)) != 0xffff)
    {
        *qosType = wd->ap.staTable[id].qosType;
    }
    else
    {
        *qosType = 0;
    }

    FUNC4(dev);

    return;
}