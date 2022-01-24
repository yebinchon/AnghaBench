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
struct mutex {int /*<<< orphan*/  wait_list; int /*<<< orphan*/  wait_lock; int /*<<< orphan*/  count; } ;
struct lock_class_key {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mutex*,char const*,struct lock_class_key*) ; 
 int /*<<< orphan*/  FUNC3 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct mutex *lock, const char *name, struct lock_class_key *key)
{
	FUNC1(&lock->count, 1);
	FUNC4(&lock->wait_lock);
	FUNC0(&lock->wait_list);
	FUNC3(lock);

	FUNC2(lock, name, key);
}