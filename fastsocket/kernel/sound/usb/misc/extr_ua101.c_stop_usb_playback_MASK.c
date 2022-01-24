#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ua101 {int /*<<< orphan*/  playback_tasklet; int /*<<< orphan*/  playback; int /*<<< orphan*/  states; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTF_PLAYBACK ; 
 int /*<<< orphan*/  USB_PLAYBACK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ua101*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ua101 *ua)
{
	FUNC0(USB_PLAYBACK_RUNNING, &ua->states);

	FUNC2(&ua->playback);

	FUNC3(&ua->playback_tasklet);

	FUNC1(ua, INTF_PLAYBACK);
}