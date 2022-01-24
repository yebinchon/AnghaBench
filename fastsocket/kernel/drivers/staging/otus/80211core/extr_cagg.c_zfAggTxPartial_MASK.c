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
struct TYPE_2__ {int /*<<< orphan*/ * vtxqTail; int /*<<< orphan*/ * vtxqHead; } ;

/* Variables and functions */
 TYPE_1__* wd ; 
 size_t FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

u16_t FUNC6(zdev_t* dev, u16_t ac, u16_t readycount)
{
    u16_t qlen;
    u16_t partial;

    FUNC4(dev);

    FUNC2();

    FUNC3(dev);

    qlen = FUNC0(dev, wd->vtxqHead[ac], wd->vtxqTail[ac]);

    if ((qlen + readycount) > 0)
    {
        partial = (u16_t)( FUNC1(ac) * ((u16_t)qlen/(qlen + \
                        readycount)) );
    }
    else
    {
        partial = 0;
    }

    FUNC5(dev);

    if (partial > qlen)
        partial = qlen;

    return partial;
}