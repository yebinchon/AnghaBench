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
typedef  int /*<<< orphan*/  zbuf_t ;
typedef  int /*<<< orphan*/  u8_t ;
typedef  int /*<<< orphan*/  u16_t ;
struct zsPartnerNotifyEvent {int /*<<< orphan*/  bssid; scalar_t__ peerMacAddr; } ;
struct TYPE_3__ {scalar_t__ bssid; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;

/* Variables and functions */
 scalar_t__ ZM_WLAN_HEADER_A2_OFFSET ; 
 TYPE_2__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 

void FUNC3(zdev_t* dev, zbuf_t* buf, struct zsPartnerNotifyEvent *event)
{
    u16_t  *peerMacAddr;

    FUNC1(dev);

    peerMacAddr = (u16_t *)event->peerMacAddr;

    FUNC0(event->bssid, (u8_t *)(wd->sta.bssid), 6);
    peerMacAddr[0] = FUNC2(dev, buf, ZM_WLAN_HEADER_A2_OFFSET);
    peerMacAddr[1] = FUNC2(dev, buf, ZM_WLAN_HEADER_A2_OFFSET + 2);
    peerMacAddr[2] = FUNC2(dev, buf, ZM_WLAN_HEADER_A2_OFFSET + 4);
}