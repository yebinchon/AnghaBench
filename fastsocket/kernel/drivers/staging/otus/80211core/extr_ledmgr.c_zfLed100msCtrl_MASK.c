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
struct TYPE_3__ {int LEDCtrlFlag; int LEDCtrlType; int /*<<< orphan*/  counter; } ;
struct TYPE_4__ {TYPE_1__ ledStruct; } ;

/* Variables and functions */
#define  ZM_LED_CTRL_FLAG_ALPHA 128 
 TYPE_2__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(zdev_t* dev)
{
    FUNC4(dev);

    wd->ledStruct.counter++;

    if(wd->ledStruct.LEDCtrlFlag)
    {
        switch(wd->ledStruct.LEDCtrlFlag) {
        case ZM_LED_CTRL_FLAG_ALPHA:
            FUNC3(dev);
        break;
        }
    }
    else
    {
        switch(wd->ledStruct.LEDCtrlType) {
        case 1:			// Traditional 1 LED
            FUNC0(dev);
        break;

        case 2:			// Dual-LEDs for Netgear
            FUNC1(dev);
        break;

        case 3:			// Single-LED for Netgear (WN111v2)
            FUNC2(dev);
        break;

        default:
            FUNC0(dev);
        break;
        }
    }
}