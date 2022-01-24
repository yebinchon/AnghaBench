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
typedef  int u32_t ;
typedef  int /*<<< orphan*/  u16_t ;
struct TYPE_3__ {int counter; } ;
struct TYPE_4__ {TYPE_1__ ledStruct; } ;

/* Variables and functions */
 TYPE_2__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(zdev_t* dev, u16_t isConnect)
{
    u32_t ton, toff, tmp;
    FUNC1(dev);

    // Doing scan when :
    // 1. Disconnected: ON (200ms) - OFF (800ms) (200ms-600ms in our driver)
    //               ___             ___             ___
    // LED[0] ON    |   |           |   |           |   |
    // ------ OFF->-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+->>>...
    //              0   2   4   6   8  10  12  14  16
    // 2. Connected:   ON (800ms) - OFF (200ms) (600ms-200ms in our driver)
    //               ___________     ___________     ______
    // LED[0] ON    |           |   |           |   |
    // ------ OFF->-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+->>>...
    //              0   2   4   6   8  10  12  14  16

    //Scan state
    if(!isConnect)
        ton = 2, toff = 6;
    else
        ton = 6, toff = 2;

    if ((ton + toff) != 0)
    {
        tmp = wd->ledStruct.counter % (ton+toff);
       if (tmp < ton)
        {
            FUNC0(dev, 0, 1);
            FUNC0(dev, 1, 1);
        }
        else
        {
            FUNC0(dev, 0, 0);
            FUNC0(dev, 1, 0);
        }
    }
}