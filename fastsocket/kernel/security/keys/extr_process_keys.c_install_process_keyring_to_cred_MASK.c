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
struct key {int dummy; } ;
struct cred {TYPE_1__* tgcred; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; struct key* process_keyring; } ;

/* Variables and functions */
 int EEXIST ; 
 scalar_t__ FUNC0 (struct key*) ; 
 int /*<<< orphan*/  KEY_ALLOC_QUOTA_OVERRUN ; 
 int FUNC1 (struct key*) ; 
 int /*<<< orphan*/  FUNC2 (struct key*) ; 
 struct key* FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cred*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct cred *new)
{
	struct key *keyring;
	int ret;

	if (new->tgcred->process_keyring)
		return -EEXIST;

	keyring = FUNC3("_pid", new->uid, new->gid,
				new, KEY_ALLOC_QUOTA_OVERRUN, NULL);
	if (FUNC0(keyring))
		return FUNC1(keyring);

	FUNC4(&new->tgcred->lock);
	if (!new->tgcred->process_keyring) {
		new->tgcred->process_keyring = keyring;
		keyring = NULL;
		ret = 0;
	} else {
		ret = -EEXIST;
	}
	FUNC5(&new->tgcred->lock);
	FUNC2(keyring);
	return ret;
}