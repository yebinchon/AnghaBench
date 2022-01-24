#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timespec {scalar_t__ tv_sec; } ;
struct keyring_list {int nkeys; struct key** keys; } ;
struct key_type {int dummy; } ;
struct TYPE_4__ {scalar_t__* x; } ;
struct TYPE_3__ {int /*<<< orphan*/  subscriptions; } ;
struct key {unsigned long flags; scalar_t__ expiry; int /*<<< orphan*/  usage; struct key_type* type; TYPE_2__ type_data; TYPE_1__ payload; } ;
struct cred {int dummy; } ;
typedef  int /*<<< orphan*/  key_ref_t ;
typedef  scalar_t__ (* key_match_func_t ) (struct key*,void const*) ;

/* Variables and functions */
 long EAGAIN ; 
 long ENOTDIR ; 
 int /*<<< orphan*/  FUNC0 (long) ; 
 int KEYRING_SEARCH_MAX_DEPTH ; 
 int KEY_FLAG_NEGATIVE ; 
 int KEY_FLAG_REVOKED ; 
 int /*<<< orphan*/  KEY_SEARCH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct timespec FUNC2 () ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct key*) ; 
 struct key* FUNC5 (int /*<<< orphan*/ ) ; 
 long FUNC6 (int /*<<< orphan*/ ,struct cred const*,int /*<<< orphan*/ ) ; 
 struct key_type key_type_keyring ; 
 int /*<<< orphan*/  FUNC7 (struct key*,unsigned long) ; 
 struct keyring_list* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 (int,unsigned long*) ; 

key_ref_t FUNC13(key_ref_t keyring_ref,
			     const struct cred *cred,
			     struct key_type *type,
			     const void *description,
			     key_match_func_t match,
			     bool no_state_check)
{
	struct {
		struct keyring_list *keylist;
		int kix;
	} stack[KEYRING_SEARCH_MAX_DEPTH];

	struct keyring_list *keylist;
	struct timespec now;
	unsigned long possessed, kflags;
	struct key *keyring, *key;
	key_ref_t key_ref;
	long err;
	int sp, nkeys, kix;

	keyring = FUNC5(keyring_ref);
	possessed = FUNC3(keyring_ref);
	FUNC4(keyring);

	/* top keyring must have search permission to begin the search */
	err = FUNC6(keyring_ref, cred, KEY_SEARCH);
	if (err < 0) {
		key_ref = FUNC0(err);
		goto error;
	}

	key_ref = FUNC0(-ENOTDIR);
	if (keyring->type != &key_type_keyring)
		goto error;

	FUNC9();

	now = FUNC2();
	err = -EAGAIN;
	sp = 0;

	/* firstly we should check to see if this top-level keyring is what we
	 * are looking for */
	key_ref = FUNC0(-EAGAIN);
	kflags = keyring->flags;
	if (keyring->type == type && match(keyring, description)) {
		key = keyring;
		if (no_state_check)
			goto found;

		/* check it isn't negative and hasn't expired or been
		 * revoked */
		if (kflags & (1 << KEY_FLAG_REVOKED))
			goto error_2;
		if (key->expiry && now.tv_sec >= key->expiry)
			goto error_2;
		if (kflags & (1 << KEY_FLAG_NEGATIVE)) {
			FUNC11();
			key_ref = FUNC0((long)key->type_data.x[0]);
			goto error_2;
		}
		goto found;
	}

	/* otherwise, the top keyring must not be revoked, expired, or
	 * negatively instantiated if we are to search it */
	key_ref = FUNC0(-EAGAIN);
	if (kflags & ((1 << KEY_FLAG_REVOKED) | (1 << KEY_FLAG_NEGATIVE)) ||
	    (keyring->expiry && now.tv_sec >= keyring->expiry))
		goto error_2;

	/* start processing a new keyring */
descend:
	if (FUNC12(KEY_FLAG_REVOKED, &keyring->flags))
		goto not_this_keyring;

	keylist = FUNC8(keyring->payload.subscriptions);
	if (!keylist)
		goto not_this_keyring;

	/* iterate through the keys in this keyring first */
	nkeys = keylist->nkeys;
	FUNC11();
	for (kix = 0; kix < nkeys; kix++) {
		key = keylist->keys[kix];
		kflags = key->flags;

		/* ignore keys not of this type */
		if (key->type != type)
			continue;

		/* skip revoked keys and expired keys */
		if (!no_state_check) {
			if (kflags & (1 << KEY_FLAG_REVOKED))
				continue;

			if (key->expiry && now.tv_sec >= key->expiry)
				continue;
		}

		/* keys that don't match */
		if (!match(key, description))
			continue;

		/* key must have search permissions */
		if (FUNC6(FUNC7(key, possessed),
					cred, KEY_SEARCH) < 0)
			continue;

		if (no_state_check)
			goto found;

		/* we set a different error code if we pass a negative key */
		if (kflags & (1 << KEY_FLAG_NEGATIVE)) {
			FUNC11();
			err = (long)key->type_data.x[0];
			continue;
		}

		goto found;
	}

	/* search through the keyrings nested in this one */
	kix = 0;
ascend:
	nkeys = keylist->nkeys;
	FUNC11();
	for (; kix < nkeys; kix++) {
		key = keylist->keys[kix];
		if (key->type != &key_type_keyring)
			continue;

		/* recursively search nested keyrings
		 * - only search keyrings for which we have search permission
		 */
		if (sp >= KEYRING_SEARCH_MAX_DEPTH)
			continue;

		if (FUNC6(FUNC7(key, possessed),
					cred, KEY_SEARCH) < 0)
			continue;

		/* stack the current position */
		stack[sp].keylist = keylist;
		stack[sp].kix = kix;
		sp++;

		/* begin again with the new keyring */
		keyring = key;
		goto descend;
	}

	/* the keyring we're looking at was disqualified or didn't contain a
	 * matching key */
not_this_keyring:
	if (sp > 0) {
		/* resume the processing of a keyring higher up in the tree */
		sp--;
		keylist = stack[sp].keylist;
		kix = stack[sp].kix + 1;
		goto ascend;
	}

	key_ref = FUNC0(err);
	goto error_2;

	/* we found a viable match */
found:
	FUNC1(&key->usage);
	FUNC4(key);
	key_ref = FUNC7(key, possessed);
error_2:
	FUNC10();
error:
	return key_ref;
}