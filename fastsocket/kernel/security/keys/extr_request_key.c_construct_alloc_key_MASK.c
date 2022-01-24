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
struct key_user {int /*<<< orphan*/  cons_lock; } ;
struct key_type {int /*<<< orphan*/  match; int /*<<< orphan*/  name; } ;
struct key {int /*<<< orphan*/  flags; } ;
struct cred {int /*<<< orphan*/  fsgid; int /*<<< orphan*/  fsuid; } ;
typedef  struct key* key_ref_t ;

/* Variables and functions */
 int EINPROGRESS ; 
 scalar_t__ FUNC0 (struct key*) ; 
 int /*<<< orphan*/  KEY_FLAG_USER_CONSTRUCT ; 
 int /*<<< orphan*/  KEY_POS_ALL ; 
 int FUNC1 (struct key*) ; 
 int /*<<< orphan*/  FUNC2 (struct key*,struct key*,unsigned long*) ; 
 int FUNC3 (struct key*,struct key_type*,char const*,unsigned long*) ; 
 int FUNC4 (struct key*,struct key*) ; 
 int /*<<< orphan*/  FUNC5 (struct key*,struct key_type*,unsigned long) ; 
 struct cred* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,char const*) ; 
 struct key* FUNC8 (struct key_type*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cred const*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  key_construction_mutex ; 
 int /*<<< orphan*/  FUNC9 (struct key*) ; 
 struct key* FUNC10 (struct key*) ; 
 int FUNC11 (struct key*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 struct key* FUNC15 (struct key_type*,char const*,int /*<<< orphan*/ ,struct cred const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct key_type *type,
			       const char *description,
			       struct key *dest_keyring,
			       unsigned long flags,
			       struct key_user *user,
			       struct key **_key)
{
	const struct cred *cred = FUNC6();
	unsigned long prealloc;
	struct key *key;
	key_ref_t key_ref;
	int ret;

	FUNC7("%s,%s,,,", type->name, description);

	*_key = NULL;
	FUNC13(&user->cons_lock);

	key = FUNC8(type, description, cred->fsuid, cred->fsgid, cred,
			KEY_POS_ALL, flags);
	if (FUNC0(key))
		goto alloc_failed;

	FUNC16(KEY_FLAG_USER_CONSTRUCT, &key->flags);

	if (dest_keyring) {
		ret = FUNC3(dest_keyring, type, description,
				       &prealloc);
		if (ret < 0)
			goto link_prealloc_failed;
	}

	/* attach the key to the destination keyring under lock, but we do need
	 * to do another check just in case someone beat us to it whilst we
	 * waited for locks */
	FUNC13(&key_construction_mutex);

	key_ref = FUNC15(type, description, type->match, cred);
	if (!FUNC0(key_ref))
		goto key_already_present;

	if (dest_keyring)
		FUNC2(dest_keyring, key, &prealloc);

	FUNC14(&key_construction_mutex);
	if (dest_keyring)
		FUNC5(dest_keyring, type, prealloc);
	FUNC14(&user->cons_lock);
	*_key = key;
	FUNC12(" = 0 [%d]", FUNC11(key));
	return 0;

key_already_present:
	FUNC9(key);
	FUNC14(&key_construction_mutex);
	key = FUNC10(key_ref);
	if (dest_keyring) {
		ret = FUNC4(dest_keyring, key);
		if (ret == 0)
			FUNC2(dest_keyring, key, &prealloc);
		FUNC5(dest_keyring, type, prealloc);
		if (ret < 0)
			goto link_check_failed;
	}
	FUNC14(&user->cons_lock);
	*_key = key;
	FUNC12(" = -EINPROGRESS [%d]", FUNC11(key));
	return -EINPROGRESS;

link_check_failed:
	FUNC14(&user->cons_lock);
	FUNC9(key);
	FUNC12(" = %d [linkcheck]", ret);
	return ret;

link_prealloc_failed:
	FUNC14(&user->cons_lock);
	FUNC12(" = %d [prelink]", ret);
	return ret;

alloc_failed:
	FUNC14(&user->cons_lock);
	FUNC12(" = %ld", FUNC1(key));
	return FUNC1(key);
}