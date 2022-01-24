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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct timespec {int dummy; } ;
typedef  scalar_t__ s64 ;
struct TYPE_4__ {TYPE_1__* delays; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC0 (struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct timespec FUNC3 (struct timespec,struct timespec) ; 
 scalar_t__ FUNC4 (struct timespec*) ; 

__attribute__((used)) static void FUNC5(struct timespec *start, struct timespec *end,
				u64 *total, u32 *count)
{
	struct timespec ts;
	s64 ns;
	unsigned long flags;

	FUNC0(end);
	ts = FUNC3(*end, *start);
	ns = FUNC4(&ts);
	if (ns < 0)
		return;

	FUNC1(&current->delays->lock, flags);
	*total += ns;
	(*count)++;
	FUNC2(&current->delays->lock, flags);
}