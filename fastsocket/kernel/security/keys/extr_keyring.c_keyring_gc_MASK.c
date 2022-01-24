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
typedef  int /*<<< orphan*/  time_t ;
struct keyring_list {int nkeys; int maxkeys; int /*<<< orphan*/  rcu; struct key** keys; scalar_t__ delkey; } ;
struct TYPE_2__ {int /*<<< orphan*/  subscriptions; } ;
struct key {int /*<<< orphan*/  sem; TYPE_1__ payload; int /*<<< orphan*/  description; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int KEYQUOTA_LINK_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct key* FUNC3 (struct key*) ; 
 int /*<<< orphan*/  FUNC4 (struct key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct key*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct key*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct keyring_list*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 struct keyring_list* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct keyring_list*) ; 
 struct keyring_list* FUNC12 (struct key*) ; 
 int FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

void FUNC15(struct key *keyring, time_t limit)
{
	struct keyring_list *klist, *new;
	struct key *key;
	int loop, keep, max;

	FUNC2("{%x,%s}", FUNC6(keyring), keyring->description);

	FUNC1(&keyring->sem);

	klist = FUNC12(keyring);
	if (!klist)
		goto no_klist;

	/* work out how many subscriptions we're keeping */
	keep = 0;
	for (loop = klist->nkeys - 1; loop >= 0; loop--)
		if (!FUNC4(klist->keys[loop], limit))
			keep++;

	if (keep == klist->nkeys)
		goto just_return;

	/* allocate a new keyring payload */
	max = FUNC13(keep, 4);
	new = FUNC10(sizeof(struct keyring_list) + max * sizeof(struct key *),
		      GFP_KERNEL);
	if (!new)
		goto nomem;
	new->maxkeys = max;
	new->nkeys = 0;
	new->delkey = 0;

	/* install the live keys
	 * - must take care as expired keys may be updated back to life
	 */
	keep = 0;
	for (loop = klist->nkeys - 1; loop >= 0; loop--) {
		key = klist->keys[loop];
		if (!FUNC4(key, limit)) {
			if (keep >= max)
				goto discard_new;
			new->keys[keep++] = FUNC3(key);
		}
	}
	new->nkeys = keep;

	/* adjust the quota */
	FUNC5(keyring,
			    sizeof(struct keyring_list) +
			    KEYQUOTA_LINK_BYTES * keep);

	if (keep == 0) {
		FUNC11(keyring->payload.subscriptions, NULL);
		FUNC8(new);
	} else {
		FUNC11(keyring->payload.subscriptions, new);
	}

	FUNC14(&keyring->sem);

	FUNC0(&klist->rcu, keyring_clear_rcu_disposal);
	FUNC9(" [yes]");
	return;

discard_new:
	new->nkeys = keep;
	FUNC7(&new->rcu);
	FUNC14(&keyring->sem);
	FUNC9(" [discard]");
	return;

just_return:
	FUNC14(&keyring->sem);
	FUNC9(" [no dead]");
	return;

no_klist:
	FUNC14(&keyring->sem);
	FUNC9(" [no_klist]");
	return;

nomem:
	FUNC14(&keyring->sem);
	FUNC9(" [oom]");
}