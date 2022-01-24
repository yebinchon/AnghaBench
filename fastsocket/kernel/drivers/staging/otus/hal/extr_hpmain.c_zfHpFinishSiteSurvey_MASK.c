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
struct zsHpPriv {int isSiteSurvey; } ;
struct TYPE_2__ {struct zsHpPriv* hpPrivate; } ;

/* Variables and functions */
 TYPE_1__* wd ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(zdev_t* dev, u8_t status)
{
    struct zsHpPriv* hpPriv;

    FUNC2(dev);
    hpPriv=wd->hpPrivate;

    FUNC0();

    FUNC1(dev);
    if ( status == 1 )
    {
        hpPriv->isSiteSurvey = 2;
    }
    else
    {
        hpPriv->isSiteSurvey = 0;
    }
    FUNC3(dev);
}