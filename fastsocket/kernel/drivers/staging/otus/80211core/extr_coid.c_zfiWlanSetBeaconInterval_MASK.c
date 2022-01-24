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
typedef  scalar_t__ u8_t ;
typedef  void* u16_t ;
struct TYPE_3__ {void* beaconInterval; } ;
struct TYPE_4__ {TYPE_1__ ws; void* beaconInterval; } ;

/* Variables and functions */
 TYPE_2__* wd ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(zdev_t* dev,
                              u16_t  beaconInterval,
                              u8_t   bImmediate)
{
    FUNC2(dev);

    FUNC0();

    if ( bImmediate )
    {
        FUNC1(dev);
        wd->beaconInterval = beaconInterval;
        FUNC3(dev);

        /* update beacon interval here */
    }
    else
    {
        FUNC1(dev);
        wd->ws.beaconInterval = beaconInterval;
        FUNC3(dev);
    }
}