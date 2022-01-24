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
struct lockdep_map {char* name; struct lock_class_key* key; int /*<<< orphan*/  cpu; int /*<<< orphan*/ * class_cache; } ;
struct lock_class_key {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  debug_locks ; 
 int /*<<< orphan*/  FUNC1 (char*,struct lock_class_key*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct lockdep_map*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct lock_class_key*) ; 
 scalar_t__ FUNC5 (int) ; 

void FUNC6(struct lockdep_map *lock, const char *name,
		      struct lock_class_key *key, int subclass)
{
	lock->class_cache = NULL;
#ifdef CONFIG_LOCK_STAT
	lock->cpu = raw_smp_processor_id();
#endif

	if (FUNC0(!name)) {
		lock->name = "NULL";
		return;
	}

	lock->name = name;

	if (FUNC0(!key))
		return;
	/*
	 * Sanity check, the lock-class key must be persistent:
	 */
	if (!FUNC4(key)) {
		FUNC1("BUG: key %p not in .data!\n", key);
		FUNC0(1);
		return;
	}
	lock->key = key;

	if (FUNC5(!debug_locks))
		return;

	if (subclass)
		FUNC3(lock, subclass, 1);
}