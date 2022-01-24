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
struct adsp_device {scalar_t__ abort; int /*<<< orphan*/  event_queue_lock; int /*<<< orphan*/  event_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct adsp_device *adev)
{
	unsigned long flags;
	int yes;
	FUNC1(&adev->event_queue_lock, flags);
	yes = !FUNC0(&adev->event_queue);
	FUNC2(&adev->event_queue_lock, flags);
	return yes || adev->abort;
}