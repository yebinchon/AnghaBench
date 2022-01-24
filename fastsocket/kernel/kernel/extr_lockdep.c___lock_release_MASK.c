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
struct task_struct {int dummy; } ;
struct lockdep_map {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,struct lockdep_map*,unsigned long) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,struct lockdep_map*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,struct lockdep_map*,unsigned long) ; 

__attribute__((used)) static void
FUNC4(struct lockdep_map *lock, int nested, unsigned long ip)
{
	struct task_struct *curr = current;

	if (!FUNC1(curr, lock, ip))
		return;

	if (nested) {
		if (!FUNC2(curr, lock, ip))
			return;
	} else {
		if (!FUNC3(curr, lock, ip))
			return;
	}

	FUNC0(curr);
}