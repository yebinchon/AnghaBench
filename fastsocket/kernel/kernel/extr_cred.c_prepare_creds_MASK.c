#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct task_struct {struct cred* cred; } ;
struct cred {int /*<<< orphan*/ * security; TYPE_1__* tgcred; int /*<<< orphan*/  request_key_auth; int /*<<< orphan*/  thread_keyring; int /*<<< orphan*/  user; int /*<<< orphan*/  group_info; int /*<<< orphan*/  usage; } ;
struct TYPE_2__ {int /*<<< orphan*/  usage; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct cred*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  cred_jar ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct cred*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct cred* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cred*,struct cred const*,int) ; 
 scalar_t__ FUNC9 (struct cred*,struct cred const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct cred*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct cred*) ; 
 int /*<<< orphan*/  FUNC12 () ; 

struct cred *FUNC13(void)
{
	struct task_struct *task = current;
	const struct cred *old;
	struct cred *new;

	FUNC12();

	new = FUNC7(cred_jar, GFP_KERNEL);
	if (!new)
		return NULL;

	FUNC5("prepare_creds() alloc %p", new);

	old = task->cred;
	FUNC8(new, old, sizeof(struct cred));

	FUNC2(&new->usage, 1);
	FUNC10(new, 0);
	FUNC3(new->group_info);
	FUNC4(new->user);

#ifdef CONFIG_KEYS
	key_get(new->thread_keyring);
	key_get(new->request_key_auth);
	atomic_inc(&new->tgcred->usage);
#endif

#ifdef CONFIG_SECURITY
	new->security = NULL;
#endif

	if (FUNC9(new, old, GFP_KERNEL) < 0)
		goto error;
	FUNC11(new);
	return new;

error:
	FUNC0(new);
	return NULL;
}