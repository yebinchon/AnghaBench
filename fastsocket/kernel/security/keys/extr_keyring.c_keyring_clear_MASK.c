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
struct keyring_list {int /*<<< orphan*/  rcu; } ;
struct TYPE_2__ {int /*<<< orphan*/  subscriptions; } ;
struct key {int /*<<< orphan*/  sem; TYPE_1__ payload; int /*<<< orphan*/ * type; } ;

/* Variables and functions */
 int ENOTDIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct key*,int) ; 
 int /*<<< orphan*/  key_type_keyring ; 
 int /*<<< orphan*/  keyring_clear_rcu_disposal ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct keyring_list* FUNC4 (struct key*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct key *keyring)
{
	struct keyring_list *klist;
	int ret;

	ret = -ENOTDIR;
	if (keyring->type == &key_type_keyring) {
		/* detach the pointer block with the locks held */
		FUNC1(&keyring->sem);

		klist = FUNC4(keyring);
		if (klist) {
			/* adjust the quota */
			FUNC2(keyring,
					    sizeof(struct keyring_list));

			FUNC3(keyring->payload.subscriptions,
					   NULL);
		}

		FUNC5(&keyring->sem);

		/* free the keys after the locks have been dropped */
		if (klist)
			FUNC0(&klist->rcu, keyring_clear_rcu_disposal);

		ret = 0;
	}

	return ret;
}