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
typedef  scalar_t__ uid_t ;
struct key_user {int qnkeys; size_t qnbytes; int /*<<< orphan*/  lock; int /*<<< orphan*/  nkeys; } ;
struct key_type {size_t def_datalen; } ;
struct TYPE_4__ {int /*<<< orphan*/ * data; } ;
struct key {size_t quotalen; size_t datalen; int flags; int /*<<< orphan*/  description; int /*<<< orphan*/  magic; int /*<<< orphan*/  type_data; int /*<<< orphan*/ * security; TYPE_2__ payload; scalar_t__ expiry; int /*<<< orphan*/  perm; int /*<<< orphan*/  gid; scalar_t__ uid; struct key_user* user; struct key_type* type; int /*<<< orphan*/  sem; int /*<<< orphan*/  usage; } ;
struct cred {TYPE_1__* user; } ;
typedef  int /*<<< orphan*/  key_perm_t ;
typedef  int /*<<< orphan*/  gid_t ;
struct TYPE_3__ {int /*<<< orphan*/  user_ns; } ;

/* Variables and functions */
 int EDQUOT ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct key* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long KEY_ALLOC_NOT_IN_QUOTA ; 
 unsigned long KEY_ALLOC_QUOTA_OVERRUN ; 
 int /*<<< orphan*/  KEY_DEBUG_MAGIC ; 
 int KEY_FLAG_IN_QUOTA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct key*) ; 
 int /*<<< orphan*/  key_jar ; 
 unsigned int key_quota_maxbytes ; 
 unsigned int key_quota_maxkeys ; 
 unsigned int key_quota_root_maxbytes ; 
 unsigned int key_quota_root_maxkeys ; 
 struct key_user* FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct key_user*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct key* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct key*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct key*,struct cred const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (char const*) ; 

struct key *FUNC16(struct key_type *type, const char *desc,
		      uid_t uid, gid_t gid, const struct cred *cred,
		      key_perm_t perm, unsigned long flags)
{
	struct key_user *user = NULL;
	struct key *key;
	size_t desclen, quotalen;
	int ret;

	key = FUNC0(-EINVAL);
	if (!desc || !*desc)
		goto error;

	desclen = FUNC15(desc) + 1;
	quotalen = desclen + type->def_datalen;

	/* get hold of the key tracking for this user */
	user = FUNC5(uid, cred->user->user_ns);
	if (!user)
		goto no_memory_1;

	/* check that the user's quota permits allocation of another key and
	 * its description */
	if (!(flags & KEY_ALLOC_NOT_IN_QUOTA)) {
		unsigned maxkeys = (uid == 0) ?
			key_quota_root_maxkeys : key_quota_maxkeys;
		unsigned maxbytes = (uid == 0) ?
			key_quota_root_maxbytes : key_quota_maxbytes;

		FUNC13(&user->lock);
		if (!(flags & KEY_ALLOC_QUOTA_OVERRUN)) {
			if (user->qnkeys + 1 >= maxkeys ||
			    user->qnbytes + quotalen >= maxbytes ||
			    user->qnbytes + quotalen < user->qnbytes)
				goto no_quota;
		}

		user->qnkeys++;
		user->qnbytes += quotalen;
		FUNC14(&user->lock);
	}

	/* allocate and initialise the key and its description */
	key = FUNC8(key_jar, GFP_KERNEL);
	if (!key)
		goto no_memory_2;

	if (desc) {
		key->description = FUNC10(desc, desclen, GFP_KERNEL);
		if (!key->description)
			goto no_memory_3;
	}

	FUNC2(&key->usage, 1);
	FUNC3(&key->sem);
	key->type = type;
	key->user = user;
	key->quotalen = quotalen;
	key->datalen = type->def_datalen;
	key->uid = uid;
	key->gid = gid;
	key->perm = perm;
	key->flags = 0;
	key->expiry = 0;
	key->payload.data = NULL;
	key->security = NULL;

	if (!(flags & KEY_ALLOC_NOT_IN_QUOTA))
		key->flags |= 1 << KEY_FLAG_IN_QUOTA;

	FUNC11(&key->type_data, 0, sizeof(key->type_data));

#ifdef KEY_DEBUGGING
	key->magic = KEY_DEBUG_MAGIC;
#endif

	/* let the security module know about the key */
	ret = FUNC12(key, cred, flags);
	if (ret < 0)
		goto security_error;

	/* publish the key by giving it a serial number */
	FUNC1(&user->nkeys);
	FUNC4(key);

error:
	return key;

security_error:
	FUNC7(key->description);
	FUNC9(key_jar, key);
	if (!(flags & KEY_ALLOC_NOT_IN_QUOTA)) {
		FUNC13(&user->lock);
		user->qnkeys--;
		user->qnbytes -= quotalen;
		FUNC14(&user->lock);
	}
	FUNC6(user);
	key = FUNC0(ret);
	goto error;

no_memory_3:
	FUNC9(key_jar, key);
no_memory_2:
	if (!(flags & KEY_ALLOC_NOT_IN_QUOTA)) {
		FUNC13(&user->lock);
		user->qnkeys--;
		user->qnbytes -= quotalen;
		FUNC14(&user->lock);
	}
	FUNC6(user);
no_memory_1:
	key = FUNC0(-ENOMEM);
	goto error;

no_quota:
	FUNC14(&user->lock);
	FUNC6(user);
	key = FUNC0(-EDQUOT);
	goto error;
}