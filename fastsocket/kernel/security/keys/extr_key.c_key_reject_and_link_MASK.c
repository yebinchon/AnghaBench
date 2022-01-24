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
struct timespec {unsigned int tv_sec; } ;
struct TYPE_4__ {long* x; } ;
struct key {unsigned int expiry; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; TYPE_2__ type_data; TYPE_1__* user; int /*<<< orphan*/  description; } ;
struct TYPE_3__ {int /*<<< orphan*/  nikeys; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  KEY_FLAG_INSTANTIATED ; 
 int /*<<< orphan*/  KEY_FLAG_NEGATIVE ; 
 int /*<<< orphan*/  KEY_FLAG_USER_CONSTRUCT ; 
 int /*<<< orphan*/  FUNC0 (struct key*,struct key*,unsigned long*) ; 
 int FUNC1 (struct key*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct key*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct timespec FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct key*) ; 
 int /*<<< orphan*/  key_construction_mutex ; 
 unsigned int key_gc_delay ; 
 int /*<<< orphan*/  FUNC6 (struct key*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC15(struct key *key,
			unsigned timeout,
			unsigned error,
			struct key *keyring,
			struct key *authkey)
{
	unsigned long prealloc;
	struct timespec now;
	int ret, awaken, link_ret = 0;

	FUNC5(key);
	FUNC5(keyring);

	awaken = 0;
	ret = -EBUSY;

	if (keyring)
		link_ret = FUNC1(keyring, key->type,
					    key->description, &prealloc);

	FUNC8(&key_construction_mutex);

	/* can't instantiate twice */
	if (!FUNC13(KEY_FLAG_INSTANTIATED, &key->flags)) {
		/* mark the key as being negatively instantiated */
		FUNC3(&key->user->nikeys);
		key->type_data.x[0] = -(long)error;
		FUNC11();
		FUNC10(KEY_FLAG_NEGATIVE, &key->flags);
		FUNC10(KEY_FLAG_INSTANTIATED, &key->flags);
		now = FUNC4();
		key->expiry = now.tv_sec + timeout;
		FUNC7(key->expiry + key_gc_delay);

		if (FUNC12(KEY_FLAG_USER_CONSTRUCT, &key->flags))
			awaken = 1;

		ret = 0;

		/* and link it into the destination keyring */
		if (keyring && link_ret == 0)
			FUNC0(keyring, key, &prealloc);

		/* disable the authorisation key */
		if (authkey)
			FUNC6(authkey);
	}

	FUNC9(&key_construction_mutex);

	if (keyring)
		FUNC2(keyring, key->type, prealloc);

	/* wake up anyone waiting for a key to be constructed */
	if (awaken)
		FUNC14(&key->flags, KEY_FLAG_USER_CONSTRUCT);

	return ret == 0 ? link_ret : ret;
}