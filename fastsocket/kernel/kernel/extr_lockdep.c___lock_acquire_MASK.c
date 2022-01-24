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
typedef  scalar_t__ u64 ;
struct task_struct {unsigned int lockdep_depth; scalar_t__ curr_chain_key; struct held_lock* held_locks; } ;
struct lockdep_map {struct lock_class* class_cache; } ;
struct lock_class {int name_version; int /*<<< orphan*/  name; int /*<<< orphan*/  key; int /*<<< orphan*/  ops; } ;
struct held_lock {int class_idx; int references; unsigned long acquire_ip; int trylock; int read; int check; int hardirqs_off; scalar_t__ prev_chain_key; int /*<<< orphan*/  holdtime_stamp; scalar_t__ waittime_stamp; struct lockdep_map* nest_lock; struct lockdep_map* instance; } ;
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  LOCK_USED ; 
 unsigned int MAX_LOCKDEP_KEYS ; 
 unsigned int MAX_LOCKDEP_SUBCLASSES ; 
 unsigned int MAX_LOCK_DEPTH ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  debug_locks ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (scalar_t__,unsigned int) ; 
 struct lock_class* lock_classes ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*,struct held_lock*) ; 
 int /*<<< orphan*/  FUNC9 (struct task_struct*,struct held_lock*,int /*<<< orphan*/ ) ; 
 unsigned int max_lockdep_depth ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  prove_locking ; 
 struct lock_class* FUNC11 (struct lockdep_map*,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct task_struct*,struct held_lock*) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct task_struct*,struct lockdep_map*,struct held_lock*,int,scalar_t__) ; 
 scalar_t__ FUNC15 (struct lock_class*) ; 

__attribute__((used)) static int FUNC16(struct lockdep_map *lock, unsigned int subclass,
			  int trylock, int read, int check, int hardirqs_off,
			  struct lockdep_map *nest_lock, unsigned long ip,
			  int references)
{
	struct task_struct *curr = current;
	struct lock_class *class = NULL;
	struct held_lock *hlock;
	unsigned int depth, id;
	int chain_head = 0;
	int class_idx;
	u64 chain_key;

	if (!prove_locking)
		check = 1;

	if (FUNC13(!debug_locks))
		return 0;

	if (FUNC0(!FUNC5()))
		return 0;

	if (FUNC13(subclass >= MAX_LOCKDEP_SUBCLASSES)) {
		FUNC3();
		FUNC10("BUG: MAX_LOCKDEP_SUBCLASSES too low!\n");
		FUNC10("turning off the locking correctness validator.\n");
		FUNC4();
		return 0;
	}

	if (!subclass)
		class = lock->class_cache;
	/*
	 * Not cached yet or subclass?
	 */
	if (FUNC13(!class)) {
		class = FUNC11(lock, subclass, 0);
		if (!class)
			return 0;
	}
	FUNC2((atomic_t *)&class->ops);
	if (FUNC15(class)) {
		FUNC10("\nacquire class [%p] %s", class->key, class->name);
		if (class->name_version > 1)
			FUNC10("#%d", class->name_version);
		FUNC10("\n");
		FUNC4();
	}

	/*
	 * Add the lock to the list of currently held locks.
	 * (we dont increase the depth just yet, up until the
	 * dependency checks are done)
	 */
	depth = curr->lockdep_depth;
	if (FUNC0(depth >= MAX_LOCK_DEPTH))
		return 0;

	class_idx = class - lock_classes + 1;

	if (depth) {
		hlock = curr->held_locks + depth - 1;
		if (hlock->class_idx == class_idx && nest_lock) {
			if (hlock->references)
				hlock->references++;
			else
				hlock->references = 2;

			return 1;
		}
	}

	hlock = curr->held_locks + depth;
	if (FUNC0(!class))
		return 0;
	hlock->class_idx = class_idx;
	hlock->acquire_ip = ip;
	hlock->instance = lock;
	hlock->nest_lock = nest_lock;
	hlock->trylock = trylock;
	hlock->read = read;
	hlock->check = check;
	hlock->hardirqs_off = !!hardirqs_off;
	hlock->references = references;
#ifdef CONFIG_LOCK_STAT
	hlock->waittime_stamp = 0;
	hlock->holdtime_stamp = lockstat_clock();
#endif

	if (check == 2 && !FUNC8(curr, hlock))
		return 0;

	/* mark it as used: */
	if (!FUNC9(curr, hlock, LOCK_USED))
		return 0;

	/*
	 * Calculate the chain hash: it's the combined hash of all the
	 * lock keys along the dependency chain. We save the hash value
	 * at every step so that we can get the current hash easily
	 * after unlock. The chain hash is then used to cache dependency
	 * results.
	 *
	 * The 'key ID' is what is the most compact key value to drive
	 * the hash, not class->key.
	 */
	id = class - lock_classes;
	if (FUNC0(id >= MAX_LOCKDEP_KEYS))
		return 0;

	chain_key = curr->curr_chain_key;
	if (!depth) {
		if (FUNC0(chain_key != 0))
			return 0;
		chain_head = 1;
	}

	hlock->prev_chain_key = chain_key;
	if (FUNC12(curr, hlock)) {
		chain_key = 0;
		chain_head = 1;
	}
	chain_key = FUNC6(chain_key, id);

	if (!FUNC14(curr, lock, hlock, chain_head, chain_key))
		return 0;

	curr->curr_chain_key = chain_key;
	curr->lockdep_depth++;
	FUNC1(curr);
#ifdef CONFIG_DEBUG_LOCKDEP
	if (unlikely(!debug_locks))
		return 0;
#endif
	if (FUNC13(curr->lockdep_depth >= MAX_LOCK_DEPTH)) {
		FUNC3();
		FUNC10("BUG: MAX_LOCK_DEPTH too low!\n");
		FUNC10("turning off the locking correctness validator.\n");
		FUNC4();
		return 0;
	}

	if (FUNC13(curr->lockdep_depth > max_lockdep_depth))
		max_lockdep_depth = curr->lockdep_depth;

	return 1;
}