#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  scalar_t__ u8_t ;
typedef  size_t u16_t ;
struct TYPE_5__ {TYPE_1__* blockingApList; } ;
struct TYPE_6__ {TYPE_2__ sta; } ;
struct TYPE_4__ {scalar_t__ weight; scalar_t__* addr; } ;

/* Variables and functions */
 size_t FALSE ; 
 size_t TRUE ; 
 size_t ZM_MAX_BLOCKING_AP_LIST_SIZE ; 
 TYPE_3__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

u16_t FUNC1(zdev_t* dev, u8_t* bssid)
{
    u16_t i, j;
    FUNC0(dev);
    //zmw_declare_for_critical_section();

    //zmw_enter_critical_section(dev);
    for (i=0; i<ZM_MAX_BLOCKING_AP_LIST_SIZE; i++)
    {
        if (wd->sta.blockingApList[i].weight != 0)
        {
            for (j=0; j<6; j++)
            {
                if (wd->sta.blockingApList[i].addr[j] != bssid[j])
                {
                    break;
                }
            }
            if (j == 6)
            {
                //zmw_leave_critical_section(dev);
                return TRUE;
            }
        }
    }
    //zmw_leave_critical_section(dev);
    return FALSE;
}