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
typedef  scalar_t__ u8_t ;
typedef  int u16_t ;
struct zsHpPriv {scalar_t__* ledMode; } ;
struct TYPE_2__ {scalar_t__ hpPrivate; } ;

/* Variables and functions */
 TYPE_1__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(zdev_t* dev, u16_t ledId, u8_t mode)
{
    u16_t state;
    FUNC2(dev);

    //zm_debug_msg1("LED ID=", ledId);
    //zm_debug_msg1("LED mode=", mode);
    if (ledId < 2)
    {
        if (((struct zsHpPriv*)wd->hpPrivate)->ledMode[ledId] != mode)
        {
            ((struct zsHpPriv*)wd->hpPrivate)->ledMode[ledId] = mode;

            state = ((struct zsHpPriv*)wd->hpPrivate)->ledMode[0]
                    | (((struct zsHpPriv*)wd->hpPrivate)->ledMode[1]<<1);
            FUNC0(dev, 0x1d0104, state);
            FUNC1(dev);
            //zm_debug_msg0("Update LED");
        }
    }
}