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
struct key {int /*<<< orphan*/  usage; } ;
struct cred {TYPE_1__* tgcred; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; struct key* session_keyring; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct key*) ; 
 unsigned long KEY_ALLOC_IN_QUOTA ; 
 unsigned long KEY_ALLOC_QUOTA_OVERRUN ; 
 int FUNC1 (struct key*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct key*) ; 
 struct key* FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cred*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct key*,struct key*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(struct cred *cred,
					   struct key *keyring)
{
	unsigned long flags;
	struct key *old;

	FUNC5();

	/* create an empty session keyring */
	if (!keyring) {
		flags = KEY_ALLOC_QUOTA_OVERRUN;
		if (cred->tgcred->session_keyring)
			flags = KEY_ALLOC_IN_QUOTA;

		keyring = FUNC4("_ses", cred->uid, cred->gid,
					cred, flags, NULL);
		if (FUNC0(keyring))
			return FUNC1(keyring);
	} else {
		FUNC2(&keyring->usage);
	}

	/* install the keyring */
	FUNC7(&cred->tgcred->lock);
	old = cred->tgcred->session_keyring;
	FUNC6(cred->tgcred->session_keyring, keyring);
	FUNC8(&cred->tgcred->lock);

	/* we're using RCU on the pointer, but there's no point synchronising
	 * on it if it didn't previously point to anything */
	if (old) {
		FUNC9();
		FUNC3(old);
	}

	return 0;
}