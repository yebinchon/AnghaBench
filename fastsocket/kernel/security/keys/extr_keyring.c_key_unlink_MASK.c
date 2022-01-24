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
struct keyring_list {int nkeys; int maxkeys; int delkey; int /*<<< orphan*/  rcu; struct key** keys; } ;
struct TYPE_2__ {int /*<<< orphan*/  subscriptions; } ;
struct key {int /*<<< orphan*/  sem; TYPE_1__ payload; scalar_t__ datalen; int /*<<< orphan*/ * type; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int ENOTDIR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ KEYQUOTA_LINK_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct key*) ; 
 int /*<<< orphan*/  FUNC3 (struct key*,scalar_t__) ; 
 int /*<<< orphan*/  key_type_keyring ; 
 int /*<<< orphan*/  keyring_unlink_rcu_disposal ; 
 struct keyring_list* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct key**,struct key**,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct keyring_list*) ; 
 struct keyring_list* FUNC7 (struct key*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct key *keyring, struct key *key)
{
	struct keyring_list *klist, *nklist;
	int loop, ret;

	FUNC2(keyring);
	FUNC2(key);

	ret = -ENOTDIR;
	if (keyring->type != &key_type_keyring)
		goto error;

	FUNC1(&keyring->sem);

	klist = FUNC7(keyring);
	if (klist) {
		/* search the keyring for the key */
		for (loop = 0; loop < klist->nkeys; loop++)
			if (klist->keys[loop] == key)
				goto key_is_present;
	}

	FUNC8(&keyring->sem);
	ret = -ENOENT;
	goto error;

key_is_present:
	/* we need to copy the key list for RCU purposes */
	nklist = FUNC4(sizeof(*klist) +
			 sizeof(struct key *) * klist->maxkeys,
			 GFP_KERNEL);
	if (!nklist)
		goto nomem;
	nklist->maxkeys = klist->maxkeys;
	nklist->nkeys = klist->nkeys - 1;

	if (loop > 0)
		FUNC5(&nklist->keys[0],
		       &klist->keys[0],
		       loop * sizeof(struct key *));

	if (loop < nklist->nkeys)
		FUNC5(&nklist->keys[loop],
		       &klist->keys[loop + 1],
		       (nklist->nkeys - loop) * sizeof(struct key *));

	/* adjust the user's quota */
	FUNC3(keyring,
			    keyring->datalen - KEYQUOTA_LINK_BYTES);

	FUNC6(keyring->payload.subscriptions, nklist);

	FUNC8(&keyring->sem);

	/* schedule for later cleanup */
	klist->delkey = loop;
	FUNC0(&klist->rcu, keyring_unlink_rcu_disposal);

	ret = 0;

error:
	return ret;
nomem:
	ret = -ENOMEM;
	FUNC8(&keyring->sem);
	goto error;
}