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
typedef  scalar_t__ uid_t ;
struct key_user {int qnkeys; unsigned int qnbytes; int /*<<< orphan*/  lock; int /*<<< orphan*/  nikeys; int /*<<< orphan*/  nkeys; } ;
struct key {scalar_t__ uid; scalar_t__ gid; unsigned int quotalen; int /*<<< orphan*/  sem; struct key_user* user; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  key_serial_t ;
typedef  int /*<<< orphan*/  key_ref_t ;
typedef  scalar_t__ gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 long EACCES ; 
 long EDQUOT ; 
 long ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEY_FLAG_INSTANTIATED ; 
 int /*<<< orphan*/  KEY_FLAG_IN_QUOTA ; 
 int KEY_LOOKUP_CREATE ; 
 int KEY_LOOKUP_PARTIAL ; 
 int /*<<< orphan*/  KEY_SETATTR ; 
 long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct key*) ; 
 unsigned int key_quota_maxbytes ; 
 unsigned int key_quota_maxkeys ; 
 unsigned int key_quota_root_maxbytes ; 
 unsigned int key_quota_root_maxkeys ; 
 struct key* FUNC9 (int /*<<< orphan*/ ) ; 
 struct key_user* FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct key_user*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

long FUNC17(key_serial_t id, uid_t uid, gid_t gid)
{
	struct key_user *newowner, *zapowner = NULL;
	struct key *key;
	key_ref_t key_ref;
	long ret;

	ret = 0;
	if (uid == (uid_t) -1 && gid == (gid_t) -1)
		goto error;

	key_ref = FUNC12(id, KEY_LOOKUP_CREATE | KEY_LOOKUP_PARTIAL,
				  KEY_SETATTR);
	if (FUNC0(key_ref)) {
		ret = FUNC1(key_ref);
		goto error;
	}

	key = FUNC9(key_ref);

	/* make the changes with the locks held to prevent chown/chown races */
	ret = -EACCES;
	FUNC6(&key->sem);

	if (!FUNC4(CAP_SYS_ADMIN)) {
		/* only the sysadmin can chown a key to some other UID */
		if (uid != (uid_t) -1 && key->uid != uid)
			goto error_put;

		/* only the sysadmin can set the key's GID to a group other
		 * than one of those that the current process subscribes to */
		if (gid != (gid_t) -1 && gid != key->gid && !FUNC7(gid))
			goto error_put;
	}

	/* change the UID */
	if (uid != (uid_t) -1 && uid != key->uid) {
		ret = -ENOMEM;
		newowner = FUNC10(uid, FUNC5());
		if (!newowner)
			goto error_put;

		/* transfer the quota burden to the new user */
		if (FUNC15(KEY_FLAG_IN_QUOTA, &key->flags)) {
			unsigned maxkeys = (uid == 0) ?
				key_quota_root_maxkeys : key_quota_maxkeys;
			unsigned maxbytes = (uid == 0) ?
				key_quota_root_maxbytes : key_quota_maxbytes;

			FUNC13(&newowner->lock);
			if (newowner->qnkeys + 1 >= maxkeys ||
			    newowner->qnbytes + key->quotalen >= maxbytes ||
			    newowner->qnbytes + key->quotalen <
			    newowner->qnbytes)
				goto quota_overrun;

			newowner->qnkeys++;
			newowner->qnbytes += key->quotalen;
			FUNC14(&newowner->lock);

			FUNC13(&key->user->lock);
			key->user->qnkeys--;
			key->user->qnbytes -= key->quotalen;
			FUNC14(&key->user->lock);
		}

		FUNC2(&key->user->nkeys);
		FUNC3(&newowner->nkeys);

		if (FUNC15(KEY_FLAG_INSTANTIATED, &key->flags)) {
			FUNC2(&key->user->nikeys);
			FUNC3(&newowner->nikeys);
		}

		zapowner = key->user;
		key->user = newowner;
		key->uid = uid;
	}

	/* change the GID */
	if (gid != (gid_t) -1)
		key->gid = gid;

	ret = 0;

error_put:
	FUNC16(&key->sem);
	FUNC8(key);
	if (zapowner)
		FUNC11(zapowner);
error:
	return ret;

quota_overrun:
	FUNC14(&newowner->lock);
	zapowner = newowner;
	ret = -EDQUOT;
	goto error_put;
}