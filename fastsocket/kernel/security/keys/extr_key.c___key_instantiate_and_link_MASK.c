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
struct key {int /*<<< orphan*/  flags; TYPE_2__* user; TYPE_1__* type; } ;
struct TYPE_4__ {int /*<<< orphan*/  nikeys; } ;
struct TYPE_3__ {int (* instantiate ) (struct key*,void const*,size_t) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  KEY_FLAG_INSTANTIATED ; 
 int /*<<< orphan*/  KEY_FLAG_USER_CONSTRUCT ; 
 int /*<<< orphan*/  FUNC0 (struct key*,struct key*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct key*) ; 
 int /*<<< orphan*/  key_construction_mutex ; 
 int /*<<< orphan*/  FUNC3 (struct key*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct key*,void const*,size_t) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct key *key,
				      const void *data,
				      size_t datalen,
				      struct key *keyring,
				      struct key *authkey,
				      unsigned long *_prealloc)
{
	int ret, awaken;

	FUNC2(key);
	FUNC2(keyring);

	awaken = 0;
	ret = -EBUSY;

	FUNC4(&key_construction_mutex);

	/* can't instantiate twice */
	if (!FUNC9(KEY_FLAG_INSTANTIATED, &key->flags)) {
		/* instantiate the key */
		ret = key->type->instantiate(key, data, datalen);

		if (ret == 0) {
			/* mark the key as being instantiated */
			FUNC1(&key->user->nikeys);
			FUNC6(KEY_FLAG_INSTANTIATED, &key->flags);

			if (FUNC8(KEY_FLAG_USER_CONSTRUCT, &key->flags))
				awaken = 1;

			/* and link it into the destination keyring */
			if (keyring)
				FUNC0(keyring, key, _prealloc);

			/* disable the authorisation key */
			if (authkey)
				FUNC3(authkey);
		}
	}

	FUNC5(&key_construction_mutex);

	/* wake up anyone waiting for a key to be constructed */
	if (awaken)
		FUNC10(&key->flags, KEY_FLAG_USER_CONSTRUCT);

	return ret;
}