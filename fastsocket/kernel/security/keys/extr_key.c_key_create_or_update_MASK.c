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
struct key_type {scalar_t__ update; scalar_t__ read; struct key_type* type; int /*<<< orphan*/  instantiate; int /*<<< orphan*/  match; } ;
struct key {scalar_t__ update; scalar_t__ read; struct key* type; int /*<<< orphan*/  instantiate; int /*<<< orphan*/  match; } ;
struct cred {int /*<<< orphan*/  fsgid; int /*<<< orphan*/  fsuid; } ;
typedef  struct key_type* key_ref_t ;
typedef  int key_perm_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOTDIR ; 
 struct key_type* FUNC0 (struct key_type*) ; 
 struct key_type* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct key_type*) ; 
 int KEY_PERM_UNDEF ; 
 int KEY_POS_LINK ; 
 int KEY_POS_READ ; 
 int KEY_POS_SEARCH ; 
 int KEY_POS_SETATTR ; 
 int KEY_POS_VIEW ; 
 int KEY_USR_LINK ; 
 int KEY_USR_READ ; 
 int KEY_USR_SEARCH ; 
 int KEY_USR_SETATTR ; 
 int KEY_USR_VIEW ; 
 int KEY_USR_WRITE ; 
 int /*<<< orphan*/  KEY_WRITE ; 
 int FUNC3 (struct key_type*,void const*,size_t,struct key_type*,int /*<<< orphan*/ *,unsigned long*) ; 
 int FUNC4 (struct key_type*,struct key_type*,char const*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (struct key_type*,struct key_type*,unsigned long) ; 
 struct key_type* FUNC6 (struct key_type*,void const*,size_t) ; 
 struct key_type* FUNC7 (struct key_type*,struct key_type*,char const*,int /*<<< orphan*/ ) ; 
 struct cred* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct key_type*) ; 
 struct key_type* FUNC10 (struct key_type*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cred const*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct key_type*) ; 
 int FUNC12 (struct key_type*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct key_type*) ; 
 struct key_type* FUNC14 (struct key_type*) ; 
 struct key_type key_type_keyring ; 
 struct key_type* FUNC15 (char const*) ; 
 int /*<<< orphan*/  FUNC16 (struct key_type*) ; 
 struct key_type* FUNC17 (struct key_type*,int /*<<< orphan*/ ) ; 

key_ref_t FUNC18(key_ref_t keyring_ref,
			       const char *type,
			       const char *description,
			       const void *payload,
			       size_t plen,
			       key_perm_t perm,
			       unsigned long flags)
{
	unsigned long prealloc;
	const struct cred *cred = FUNC8();
	struct key_type *ktype;
	struct key *keyring, *key = NULL;
	key_ref_t key_ref;
	int ret;

	/* look up the key type to see if it's one of the registered kernel
	 * types */
	ktype = FUNC15(type);
	if (FUNC2(ktype)) {
		key_ref = FUNC1(-ENODEV);
		goto error;
	}

	key_ref = FUNC1(-EINVAL);
	if (!ktype->match || !ktype->instantiate)
		goto error_2;

	keyring = FUNC14(keyring_ref);

	FUNC11(keyring);

	key_ref = FUNC1(-ENOTDIR);
	if (keyring->type != &key_type_keyring)
		goto error_2;

	ret = FUNC4(keyring, ktype, description, &prealloc);
	if (ret < 0)
		goto error_2;

	/* if we're going to allocate a new key, we're going to have
	 * to modify the keyring */
	ret = FUNC12(keyring_ref, KEY_WRITE);
	if (ret < 0) {
		key_ref = FUNC1(ret);
		goto error_3;
	}

	/* if it's possible to update this type of key, search for an existing
	 * key of the same type and description in the destination keyring and
	 * update that instead if possible
	 */
	if (ktype->update) {
		key_ref = FUNC7(keyring_ref, ktype, description,
					       0);
		if (!FUNC2(key_ref))
			goto found_matching_key;
	}

	/* if the client doesn't provide, decide on the permissions we want */
	if (perm == KEY_PERM_UNDEF) {
		perm = KEY_POS_VIEW | KEY_POS_SEARCH | KEY_POS_LINK | KEY_POS_SETATTR;
		perm |= KEY_USR_VIEW | KEY_USR_SEARCH | KEY_USR_LINK | KEY_USR_SETATTR;

		if (ktype->read)
			perm |= KEY_POS_READ | KEY_USR_READ;

		if (ktype == &key_type_keyring || ktype->update)
			perm |= KEY_USR_WRITE;
	}

	/* allocate a new key */
	key = FUNC10(ktype, description, cred->fsuid, cred->fsgid, cred,
			perm, flags);
	if (FUNC2(key)) {
		key_ref = FUNC0(key);
		goto error_3;
	}

	/* instantiate it and link it into the target keyring */
	ret = FUNC3(key, payload, plen, keyring, NULL,
					 &prealloc);
	if (ret < 0) {
		FUNC13(key);
		key_ref = FUNC1(ret);
		goto error_3;
	}

	key_ref = FUNC17(key, FUNC9(keyring_ref));

 error_3:
	FUNC5(keyring, ktype, prealloc);
 error_2:
	FUNC16(ktype);
 error:
	return key_ref;

 found_matching_key:
	/* we found a matching key, so we're going to try to update it
	 * - we can drop the locks first as we have the key pinned
	 */
	FUNC5(keyring, ktype, prealloc);
	FUNC16(ktype);

	key_ref = FUNC6(key_ref, payload, plen);
	goto error;
}