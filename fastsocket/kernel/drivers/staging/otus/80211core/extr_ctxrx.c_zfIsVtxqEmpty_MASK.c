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
typedef  int u8_t ;
struct TYPE_2__ {scalar_t__ vmmqHead; scalar_t__ vmmqTail; scalar_t__* vtxqHead; scalar_t__* vtxqTail; } ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 TYPE_1__* wd ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

u8_t FUNC4(zdev_t* dev)
{
    u8_t isEmpty = TRUE;
    u8_t i;

    FUNC2(dev);

    FUNC0();

    FUNC1(dev);

    if (wd->vmmqHead != wd->vmmqTail)
    {
        isEmpty = FALSE;
        goto check_done;
    }

    for(i=0; i < 4; i++)
    {
        if (wd->vtxqHead[i] != wd->vtxqTail[i])
        {
            isEmpty = FALSE;
            goto check_done;
        }
    }

check_done:
    FUNC3(dev);
    return isEmpty;
}