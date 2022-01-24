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
typedef  int /*<<< orphan*/  u8_t ;
typedef  int /*<<< orphan*/  u32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

u32_t FUNC3(zdev_t *dev, u8_t endpt)
{
    /* Initialize USB TxQ */
    FUNC1(dev);

    /* Initialize USB RxQ */
    FUNC0(dev);

    /* Initialize USB Register In URB */
    //zfwUsbSubmitRegIn(dev);
    /* Initialize USB Register In URB */
    FUNC2(dev);

    return 0;
}