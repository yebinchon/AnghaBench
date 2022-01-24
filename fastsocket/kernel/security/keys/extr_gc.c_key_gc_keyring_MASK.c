#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct keyring_list {int nkeys; struct key** keys; } ;
struct TYPE_2__ {int /*<<< orphan*/  subscriptions; } ;
struct key {scalar_t__ expiry; int /*<<< orphan*/  flags; TYPE_1__ payload; } ;

/* Variables and functions */
 int /*<<< orphan*/  KEY_FLAG_DEAD ; 
 int /*<<< orphan*/  KEY_FLAG_REVOKED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct key*) ; 
 int /*<<< orphan*/  FUNC2 (struct key*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct keyring_list* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct key *keyring, time_t limit)
{
	struct keyring_list *klist;
	struct key *key;
	int loop;

	FUNC0("%x", FUNC1(keyring));

	if (FUNC8(KEY_FLAG_REVOKED, &keyring->flags))
		goto dont_gc;

	/* scan the keyring looking for dead keys */
	FUNC5();
	klist = FUNC4(keyring->payload.subscriptions);
	if (!klist)
		goto unlock_dont_gc;

	loop = klist->nkeys;
	FUNC7();
	for (loop--; loop >= 0; loop--) {
		key = klist->keys[loop];
		if (FUNC8(KEY_FLAG_DEAD, &key->flags) ||
		    (key->expiry > 0 && key->expiry <= limit))
			goto do_gc;
	}

unlock_dont_gc:
	FUNC6();
dont_gc:
	FUNC3(" [no gc]");
	return;

do_gc:
	FUNC6();

	FUNC2(keyring, limit);
	FUNC3(" [gc]");
}