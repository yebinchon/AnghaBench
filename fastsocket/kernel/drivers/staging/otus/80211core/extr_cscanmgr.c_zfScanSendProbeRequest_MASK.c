#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int u8_t ;
typedef  int u16_t ;
struct TYPE_6__ {TYPE_1__* probingSsidList; } ;
struct TYPE_7__ {scalar_t__ disableProbingWithSsid; int /*<<< orphan*/  scanFrequency; scalar_t__ DFSEnable; scalar_t__ bPassiveScan; int /*<<< orphan*/  rxBeaconCount; } ;
struct TYPE_8__ {TYPE_2__ ws; TYPE_3__ sta; } ;
struct TYPE_5__ {scalar_t__ ssidLen; } ;

/* Variables and functions */
 int ZM_MAX_PROBE_HIDDEN_SSID_SIZE ; 
 int /*<<< orphan*/  ZM_WLAN_FRAME_TYPE_PROBEREQ ; 
 TYPE_4__* wd ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(zdev_t* dev)
{
    u8_t k;
    u16_t  dst[3] = { 0xffff, 0xffff, 0xffff };

    FUNC3(dev);

    /* Increase rxBeaconCount to prevent beacon lost */
    if (FUNC2(dev))
    {
        wd->sta.rxBeaconCount++;
    }

    if ( wd->sta.bPassiveScan )
    {
        return;
    }
    /* enable 802.l11h and in DFS Band , disable sending probe request */
    if (wd->sta.DFSEnable)
    {
        if (FUNC0(dev, wd->sta.scanFrequency))
        {
            return;
        }
    }

    FUNC1(dev, ZM_WLAN_FRAME_TYPE_PROBEREQ, dst, 0, 0, 0);

    if ( wd->sta.disableProbingWithSsid )
    {
        return;
    }

    for (k=1; k<=ZM_MAX_PROBE_HIDDEN_SSID_SIZE; k++)
    {
        if ( wd->ws.probingSsidList[k-1].ssidLen != 0 )
        {
            FUNC1(dev, ZM_WLAN_FRAME_TYPE_PROBEREQ, dst, k, 0, 0);
        }
    }
}