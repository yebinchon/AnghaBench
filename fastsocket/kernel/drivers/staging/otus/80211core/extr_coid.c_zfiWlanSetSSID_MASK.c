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
struct TYPE_5__ {int ssidLen; TYPE_1__* probingSsidList; scalar_t__* ssid; } ;
struct TYPE_6__ {TYPE_2__ ws; } ;
struct TYPE_4__ {int ssidLen; scalar_t__* ssid; } ;

/* Variables and functions */
 size_t ZM_MAX_PROBE_HIDDEN_SSID_SIZE ; 
 TYPE_3__* wd ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(zdev_t* dev, u8_t* ssid, u8_t ssidLength)
{
    u16_t i;
    FUNC3(dev);

    FUNC1();

    if ( ssidLength <= 32 )
    {
        FUNC2(dev);

        wd->ws.ssidLen = ssidLength;
        FUNC0(wd->ws.ssid, ssid, ssidLength);

        if ( ssidLength < 32 )
        {
            wd->ws.ssid[ssidLength] = 0;
        }

        wd->ws.probingSsidList[0].ssidLen = ssidLength;
        FUNC0(wd->ws.probingSsidList[0].ssid, ssid, ssidLength);
        for (i=1; i<ZM_MAX_PROBE_HIDDEN_SSID_SIZE; i++)
        {
            wd->ws.probingSsidList[i].ssidLen = 0;
        }

        FUNC4(dev);
    }
}