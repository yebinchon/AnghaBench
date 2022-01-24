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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(zdev_t* dev, u8_t ht_enable, u8_t ht2040, u8_t g_mode)
{
    FUNC0(dev, 0x1c6388, 0x0c000000);

    FUNC0(dev, 0x1c59ec, 0x0cc80caa);

    if (ht_enable)
    {
        if (ht2040)
        {
            FUNC0(dev, 0x1c5918, 40);
        }
        else
        {
            FUNC0(dev, 0x1c5918, 20);
        }
    }

    if (g_mode)
    {
        FUNC0(dev, 0x1c5850, 0xec08b4e2);
        FUNC0(dev, 0x1c585c, 0x313a5d5e);
    }
    else
    {
        FUNC0(dev, 0x1c5850, 0xede8b4e0);
        FUNC0(dev, 0x1c585c, 0x3139605e);
    }

    FUNC1(dev);
    return;
}