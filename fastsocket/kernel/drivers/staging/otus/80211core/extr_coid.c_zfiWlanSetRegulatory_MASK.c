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
typedef  int /*<<< orphan*/  u16_t ;
struct TYPE_2__ {int /*<<< orphan*/  frequency; } ;

/* Variables and functions */
 TYPE_1__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(zdev_t* dev, u8_t CCS, u16_t Code, u8_t bfirstChannel)
{
    FUNC6(dev);

    FUNC4();

    if (CCS)
    {
        /* Reset Regulation Table by Country Code */
        FUNC2(dev, Code);
    }
    else
    {
        /* Reset Regulation Table by Region Code */
        FUNC3(dev, Code);
    }

    if (bfirstChannel) {
        FUNC5(dev);
        wd->frequency = FUNC0(dev, NULL);
        FUNC7(dev);
        FUNC1(dev, wd->frequency);
    }
}