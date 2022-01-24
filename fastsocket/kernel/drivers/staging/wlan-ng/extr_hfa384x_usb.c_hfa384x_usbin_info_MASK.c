#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wlandevice_t ;
struct TYPE_7__ {int /*<<< orphan*/  framelen; } ;
struct TYPE_5__ {TYPE_3__ info; } ;
struct TYPE_6__ {TYPE_1__ infofrm; } ;
typedef  TYPE_2__ hfa384x_usbin_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static void FUNC2(wlandevice_t *wlandev, hfa384x_usbin_t *usbin)
{
	usbin->infofrm.info.framelen =
	    FUNC0(usbin->infofrm.info.framelen);
	FUNC1(wlandev, &usbin->infofrm.info);
}