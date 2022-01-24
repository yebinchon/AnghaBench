#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int my_mixerdev; } ;
typedef  TYPE_1__ sb_devc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * mixer_devs ; 
 int /*<<< orphan*/  sbmixnum ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 

void FUNC2(sb_devc *devc)
{
	if (devc->my_mixerdev == -1)
		return;

	FUNC0(mixer_devs[devc->my_mixerdev]);
	FUNC1(devc->my_mixerdev);
	sbmixnum--;
}