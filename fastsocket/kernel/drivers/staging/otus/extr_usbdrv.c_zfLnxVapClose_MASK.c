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
typedef  int u16_t ;
struct net_device {int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int openFlag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 TYPE_1__* vap ; 
 int FUNC2 (struct net_device*) ; 

int FUNC3(struct net_device *dev)
{
    u16_t vapId;

    vapId = FUNC2(dev);

    if (vapId != 0xffff)
    {
        if (vap[vapId].openFlag == 1)
        {
            FUNC1("zfLnxVapClose: device name=%s, vap ID=%d\n", dev->name, vapId);

            FUNC0(dev);
            vap[vapId].openFlag = 0;
        }
        else
        {
            FUNC1("VAP port was not opened : vap ID=%d\n", vapId);
        }
    }
	return 0;
}