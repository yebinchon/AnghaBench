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
typedef  int u32_t ;
typedef  void* u16_t ;
struct TYPE_3__ {void* frequency; scalar_t__ autoSetFrequency; } ;
struct TYPE_4__ {TYPE_1__ ws; void* frequency; } ;

/* Variables and functions */
 TYPE_2__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(zdev_t* dev, u32_t frequency, u8_t bImmediate)
{
    FUNC3(dev);

    FUNC1();

    if ( bImmediate )
    {
        FUNC2(dev);
        wd->frequency = (u16_t) (frequency/1000);
        FUNC4(dev);
        FUNC0(dev, wd->frequency);
    }
    else
    {
        FUNC2(dev);
        if( frequency == 0 )
        { // Auto select clean channel depend on wireless environment !
            wd->ws.autoSetFrequency = 0;
        }
        wd->ws.frequency = (u16_t) (frequency/1000);
        FUNC4(dev);
    }
}