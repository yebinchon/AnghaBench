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
typedef  size_t u16_t ;
struct TYPE_2__ {scalar_t__* aggQPool; } ;
typedef  scalar_t__ TID_TX ;

/* Variables and functions */
 size_t ZM_AGG_POOL_SIZE ; 
 TYPE_1__* wd ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

u16_t   FUNC4(zdev_t* dev, TID_TX tid_tx) {
    u16_t   i, valid = 0;
    FUNC2(dev);

    FUNC0();

    FUNC1(dev);
    for (i=0; i<ZM_AGG_POOL_SIZE; i++)
    {
        if (wd->aggQPool[i] == tid_tx)
        {
            valid = 1;
            break;
        }
        else {
        }
    }
    FUNC3(dev);

    return valid;
}