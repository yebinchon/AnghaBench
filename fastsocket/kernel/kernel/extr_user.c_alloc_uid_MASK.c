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
typedef  int /*<<< orphan*/  uid_t ;
struct user_struct {int /*<<< orphan*/  user_ns; int /*<<< orphan*/  session_keyring; int /*<<< orphan*/  uid_keyring; int /*<<< orphan*/  __count; int /*<<< orphan*/  uid; } ;
struct user_namespace {int dummy; } ;
struct hlist_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct user_namespace*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct user_struct*) ; 
 struct user_struct* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct user_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct user_struct*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uid_cachep ; 
 struct user_struct* FUNC10 (int /*<<< orphan*/ ,struct hlist_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct user_struct*,struct hlist_head*) ; 
 int /*<<< orphan*/  uidhash_lock ; 
 struct hlist_head* FUNC12 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ FUNC15 (struct user_struct*) ; 

struct user_struct *FUNC16(struct user_namespace *ns, uid_t uid)
{
	struct hlist_head *hashent = FUNC12(ns, uid);
	struct user_struct *up, *new;

	/* Make uid_hash_find() + uids_user_create() + uid_hash_insert()
	 * atomic.
	 */
	FUNC13();

	FUNC8(&uidhash_lock);
	up = FUNC10(uid, hashent);
	FUNC9(&uidhash_lock);

	if (!up) {
		new = FUNC4(uid_cachep, GFP_KERNEL);
		if (!new)
			goto out_unlock;

		new->uid = uid;
		FUNC0(&new->__count, 1);

		if (FUNC6(new) < 0)
			goto out_free_user;

		new->user_ns = FUNC1(ns);

		if (FUNC15(new))
			goto out_destoy_sched;

		/*
		 * Before adding this, check whether we raced
		 * on adding the same user already..
		 */
		FUNC8(&uidhash_lock);
		up = FUNC10(uid, hashent);
		if (up) {
			/* This case is not possible when CONFIG_USER_SCHED
			 * is defined, since we serialize alloc_uid() using
			 * uids_mutex. Hence no need to call
			 * sched_destroy_user() or remove_user_sysfs_dir().
			 */
			FUNC2(new->uid_keyring);
			FUNC2(new->session_keyring);
			FUNC3(uid_cachep, new);
		} else {
			FUNC11(new, hashent);
			up = new;
		}
		FUNC9(&uidhash_lock);
	}

	FUNC14();

	return up;

out_destoy_sched:
	FUNC7(new);
	FUNC5(new->user_ns);
out_free_user:
	FUNC3(uid_cachep, new);
out_unlock:
	FUNC14();
	return NULL;
}