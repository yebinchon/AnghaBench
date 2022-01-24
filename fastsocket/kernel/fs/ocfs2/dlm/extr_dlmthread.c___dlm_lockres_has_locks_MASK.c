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
struct dlm_lock_resource {int /*<<< orphan*/  blocked; int /*<<< orphan*/  converting; int /*<<< orphan*/  granted; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 

int FUNC1(struct dlm_lock_resource *res)
{
	if (FUNC0(&res->granted) &&
	    FUNC0(&res->converting) &&
	    FUNC0(&res->blocked))
		return 0;
	return 1;
}