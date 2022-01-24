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
typedef  int u16_t ;
struct TYPE_2__ {int fragThreshold; } ;

/* Variables and functions */
 TYPE_1__* wd ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(zdev_t* dev, u16_t fragThreshold)
{
    FUNC2(dev);

    FUNC0();

    FUNC1(dev);

    if (fragThreshold == 0)
    {   /* fragmentation is disabled */
        wd->fragThreshold = 32767;
    }
    else if (fragThreshold < 256)
    {
        /* Minimum fragment threshold */
        wd->fragThreshold = 256;
    }
    else if (fragThreshold > 2346)
    {
        wd->fragThreshold = 2346;
    }
    else
    {
        wd->fragThreshold = fragThreshold & 0xfffe;
    }

    FUNC3(dev);
}