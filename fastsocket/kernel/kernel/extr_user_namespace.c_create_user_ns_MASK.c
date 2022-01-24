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
struct user_struct {int dummy; } ;
struct user_namespace {int /*<<< orphan*/  kref; struct user_struct* creator; scalar_t__ uidhash_table; } ;
struct cred {int /*<<< orphan*/ * request_key_auth; int /*<<< orphan*/  group_info; scalar_t__ fsgid; scalar_t__ sgid; scalar_t__ egid; scalar_t__ gid; scalar_t__ fsuid; scalar_t__ suid; scalar_t__ euid; scalar_t__ uid; struct user_struct* user; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int UIDHASH_SZ ; 
 struct user_struct* FUNC1 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  init_groups ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct user_namespace*) ; 
 struct user_namespace* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct cred *new)
{
	struct user_namespace *ns;
	struct user_struct *root_user;
	int n;

	ns = FUNC5(sizeof(struct user_namespace), GFP_KERNEL);
	if (!ns)
		return -ENOMEM;

	FUNC6(&ns->kref);

	for (n = 0; n < UIDHASH_SZ; ++n)
		FUNC0(ns->uidhash_table + n);

	/* Alloc new root user.  */
	root_user = FUNC1(ns, 0);
	if (!root_user) {
		FUNC4(ns);
		return -ENOMEM;
	}

	/* set the new root user in the credentials under preparation */
	ns->creator = new->user;
	new->user = root_user;
	new->uid = new->euid = new->suid = new->fsuid = 0;
	new->gid = new->egid = new->sgid = new->fsgid = 0;
	FUNC8(new->group_info);
	new->group_info = FUNC2(&init_groups);
#ifdef CONFIG_KEYS
	key_put(new->request_key_auth);
	new->request_key_auth = NULL;
#endif
	/* tgcred will be cleared in our caller bc CLONE_THREAD won't be set */

	/* alloc_uid() incremented the userns refcount.  Just set it to 1 */
	FUNC7(&ns->kref, 1);

	return 0;
}