#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  scalar_t__ u8_t ;
typedef  int u16_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZM_MAC_REG_BCN_PERIOD ; 
 int /*<<< orphan*/  ZM_MAC_REG_PRETBTT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(zdev_t* dev, u8_t staMode, u8_t psMode, u16_t bcnInterval)
{
    if ( staMode == 0 )
    {
        if ( psMode == 0 )
        {
            // Turn off pre-TBTT interrupt
            FUNC0(dev, ZM_MAC_REG_PRETBTT, 0);
            FUNC0(dev, ZM_MAC_REG_BCN_PERIOD, 0);
            FUNC1(dev);
        }
        else
        {
            // Turn on pre-TBTT interrupt
            FUNC0(dev, ZM_MAC_REG_PRETBTT, (bcnInterval-6)<<16);
            FUNC0(dev, ZM_MAC_REG_BCN_PERIOD, bcnInterval);
            FUNC1(dev);
        }
    }
}