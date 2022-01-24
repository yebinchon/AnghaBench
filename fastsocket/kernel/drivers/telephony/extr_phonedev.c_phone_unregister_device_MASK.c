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
struct phone_device {size_t minor; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct phone_device** phone_device ; 
 int /*<<< orphan*/  phone_lock ; 

void FUNC3(struct phone_device *pfd)
{
	FUNC1(&phone_lock);
	if (FUNC0(phone_device[pfd->minor] == pfd))
		phone_device[pfd->minor] = NULL;
	FUNC2(&phone_lock);
}