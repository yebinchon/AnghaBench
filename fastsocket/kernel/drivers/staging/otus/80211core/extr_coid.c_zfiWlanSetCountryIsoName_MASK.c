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
typedef  int u8_t ;
struct TYPE_3__ {int* countryIsoName; } ;
struct TYPE_4__ {TYPE_1__ ws; } ;

/* Variables and functions */
 TYPE_2__* wd ; 
 int FUNC0 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

u8_t FUNC2(zdev_t* dev, u8_t *countryIsoName, u8_t length)
{
    u8_t buf[5];
    FUNC1(dev);

    if (length == 4)
    {
        buf[2] = wd->ws.countryIsoName[0] = countryIsoName[2];
        buf[3] = wd->ws.countryIsoName[1] = countryIsoName[1];
        buf[4] = wd->ws.countryIsoName[2] = countryIsoName[0];
    }
    else if (length == 3)
    {
        buf[2] = wd->ws.countryIsoName[0] = countryIsoName[1];
        buf[3] = wd->ws.countryIsoName[1] = countryIsoName[0];
        buf[4] = wd->ws.countryIsoName[2] = '\0';
    }
    else
    {
        return 1;
    }

    return FUNC0(dev, buf, length);
}