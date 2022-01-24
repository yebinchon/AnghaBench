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
typedef  scalar_t__ u8_t ;
typedef  void* u16_t ;
struct TYPE_5__ {void* atimWindow; } ;
struct TYPE_4__ {void* atimWindow; } ;
struct TYPE_6__ {TYPE_2__ ws; TYPE_1__ sta; } ;

/* Variables and functions */
 TYPE_3__* wd ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(zdev_t* dev, u16_t atimWindow, u8_t bImmediate)
{
    FUNC2(dev);

    FUNC0();

    if ( bImmediate )
    {
        FUNC1(dev);
        wd->sta.atimWindow = atimWindow;
        FUNC3(dev);

        /* atim window here */
    }
    else
    {
        FUNC1(dev);
        wd->ws.atimWindow = atimWindow;
        FUNC3(dev);
    }
}