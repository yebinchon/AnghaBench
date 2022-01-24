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
typedef  size_t u16_t ;
struct net_device {int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int openFlag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,...) ; 
 TYPE_1__* vap ; 
 size_t FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,int) ; 

int FUNC5(struct net_device *dev)
{
    u16_t vapId;

    vapId = FUNC2(dev);

    if (vap[vapId].openFlag == 0)
    {
        vap[vapId].openFlag = 1;
    	FUNC1("zfLnxVapOpen : device name=%s, vap ID=%d\n", dev->name, vapId);
    	FUNC4(dev, "vap1", 4);
    	FUNC3(dev);
    	FUNC0(dev);
    }
    else
    {
        FUNC1("VAP opened error : vap ID=%d\n", vapId);
    }
	return 0;
}