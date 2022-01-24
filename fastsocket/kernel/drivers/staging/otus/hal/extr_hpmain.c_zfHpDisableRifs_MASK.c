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
struct zsHpPriv {int /*<<< orphan*/  initFastChannelChangeControl; int /*<<< orphan*/  initRIFSSearchParams; int /*<<< orphan*/  initSearchStartDelay; int /*<<< orphan*/  initAgcControl; int /*<<< orphan*/  initAGC; int /*<<< orphan*/  initDesiredSigSize; } ;
struct TYPE_2__ {scalar_t__ hpPrivate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* wd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(zdev_t* dev)
{
    FUNC2(dev);

    /* Disable RIFS function is to store these HW register initial value while the device plug-in and
       re-write to these register if the RIFS function is disabled  */

    // reg : 9850
    FUNC0(0x9850, ((struct zsHpPriv*)wd->hpPrivate)->initDesiredSigSize);

    // reg : 985c
    FUNC0(0x985c, ((struct zsHpPriv*)wd->hpPrivate)->initAGC);

    // reg : 9860
    FUNC0(0x9800+(24<<2), ((struct zsHpPriv*)wd->hpPrivate)->initAgcControl);

    // reg : 9918
    FUNC0(0x9800+(70<<2), ((struct zsHpPriv*)wd->hpPrivate)->initSearchStartDelay);

    // reg : 991c
    FUNC0 (0x99ec, ((struct zsHpPriv*)wd->hpPrivate)->initRIFSSearchParams);

    // reg : a388
    FUNC0 (0x9800+(738<<2), ((struct zsHpPriv*)wd->hpPrivate)->initFastChannelChangeControl);

    FUNC1(dev);

    return;
}