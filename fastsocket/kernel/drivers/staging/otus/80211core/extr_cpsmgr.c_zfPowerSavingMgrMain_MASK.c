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
struct TYPE_3__ {int adapterState; } ;
struct TYPE_4__ {int /*<<< orphan*/  wlanMode; TYPE_1__ sta; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZM_MODE_IBSS ; 
 int /*<<< orphan*/  ZM_MODE_INFRASTRUCTURE ; 
#define  ZM_STA_STATE_CONNECTED 130 
#define  ZM_STA_STATE_CONNECTING 129 
#define  ZM_STA_STATE_DISCONNECT 128 
 TYPE_2__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(zdev_t* dev)
{
    FUNC3(dev);

    switch (wd->sta.adapterState)
    {
    case ZM_STA_STATE_DISCONNECT:
        FUNC0(dev);
        break;
    case ZM_STA_STATE_CONNECTED:
        {
            if (wd->wlanMode == ZM_MODE_INFRASTRUCTURE) {
                FUNC2(dev);
            } else if (wd->wlanMode == ZM_MODE_IBSS) {
                FUNC1(dev);
            }
        }
        break;
    case ZM_STA_STATE_CONNECTING:
    default:
        break;
    }
}