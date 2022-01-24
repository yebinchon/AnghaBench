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
struct task_struct {scalar_t__ lockdep_depth; } ;
struct lockdep_map {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  debug_locks ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct task_struct*,struct lockdep_map*,unsigned long) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct task_struct *curr, struct lockdep_map *lock,
			unsigned long ip)
{
	if (FUNC3(!debug_locks))
		return 0;
	if (FUNC0(!FUNC1()))
		return 0;

	if (curr->lockdep_depth <= 0)
		return FUNC2(curr, lock, ip);

	return 1;
}