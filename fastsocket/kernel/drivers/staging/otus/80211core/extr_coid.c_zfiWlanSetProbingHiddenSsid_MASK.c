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
typedef  int u8_t ;
typedef  size_t u16_t ;
struct TYPE_5__ {TYPE_1__* probingSsidList; } ;
struct TYPE_6__ {TYPE_2__ ws; } ;
struct TYPE_4__ {int ssidLen; int /*<<< orphan*/  ssid; } ;

/* Variables and functions */
 size_t ZM_MAX_PROBE_HIDDEN_SSID_SIZE ; 
 TYPE_3__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(zdev_t* dev, u8_t* ssid, u8_t ssidLen,
    u16_t entry)
{
    FUNC3(dev);
    FUNC1();


    if ((ssidLen <= 32) && (entry < ZM_MAX_PROBE_HIDDEN_SSID_SIZE))
    {
        FUNC2(dev);
        wd->ws.probingSsidList[entry].ssidLen = ssidLen;
        FUNC0(wd->ws.probingSsidList[entry].ssid, ssid, ssidLen);
        FUNC4(dev);
    }

    return;
}