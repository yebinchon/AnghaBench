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
struct xt_target {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xt_target*) ; 

void
FUNC1(struct xt_target *target, unsigned int n)
{
	unsigned int i;

	for (i = 0; i < n; i++)
		FUNC0(&target[i]);
}