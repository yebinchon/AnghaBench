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
struct key_user {int dummy; } ;
struct key_type {int dummy; } ;
struct key {int dummy; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int ENOMEM ; 
 struct key* FUNC0 (int) ; 
 int FUNC1 (struct key_type*,char const*,struct key*,unsigned long,struct key_user*,struct key**) ; 
 int /*<<< orphan*/  FUNC2 (struct key**) ; 
 int FUNC3 (struct key*,char const*,size_t,void*,struct key*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct key*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  key_negative_timeout ; 
 int /*<<< orphan*/  FUNC9 (struct key*) ; 
 int FUNC10 (struct key*) ; 
 struct key_user* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct key_user*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 

__attribute__((used)) static struct key *FUNC14(struct key_type *type,
					  const char *description,
					  const char *callout_info,
					  size_t callout_len,
					  void *aux,
					  struct key *dest_keyring,
					  unsigned long flags)
{
	struct key_user *user;
	struct key *key;
	int ret;

	FUNC7("");

	user = FUNC11(FUNC4(), FUNC5());
	if (!user)
		return FUNC0(-ENOMEM);

	FUNC2(&dest_keyring);

	ret = FUNC1(type, description, dest_keyring, flags, user,
				  &key);
	FUNC12(user);

	if (ret == 0) {
		ret = FUNC3(key, callout_info, callout_len, aux,
				    dest_keyring);
		if (ret < 0) {
			FUNC6("cons failed");
			goto construction_failed;
		}
	} else if (ret == -EINPROGRESS) {
		ret = 0;
	} else {
		goto couldnt_alloc_key;
	}

	FUNC9(dest_keyring);
	FUNC13(" = key %d", FUNC10(key));
	return key;

construction_failed:
	FUNC8(key, key_negative_timeout, NULL, NULL);
	FUNC9(key);
couldnt_alloc_key:
	FUNC9(dest_keyring);
	FUNC13(" = %d", ret);
	return FUNC0(ret);
}