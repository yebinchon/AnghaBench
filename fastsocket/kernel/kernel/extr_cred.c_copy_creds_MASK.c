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
struct thread_group_cred {int /*<<< orphan*/  session_keyring; int /*<<< orphan*/ * process_keyring; int /*<<< orphan*/  lock; int /*<<< orphan*/  usage; } ;
struct task_struct {struct cred* real_cred; struct cred* cred; int /*<<< orphan*/ * replacement_session_keyring; int /*<<< orphan*/  cred_guard_mutex; } ;
struct cred {TYPE_1__* user; struct thread_group_cred* tgcred; int /*<<< orphan*/ * thread_keyring; int /*<<< orphan*/  usage; } ;
struct TYPE_2__ {int /*<<< orphan*/  processes; } ;

/* Variables and functions */
 unsigned long CLONE_NEWUSER ; 
 unsigned long CLONE_THREAD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct cred*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct cred*) ; 
 void* FUNC5 (struct cred*) ; 
 int /*<<< orphan*/  FUNC6 (struct cred*) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct cred*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct thread_group_cred* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct cred* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct cred*) ; 
 int /*<<< orphan*/  FUNC14 (struct cred*) ; 
 int /*<<< orphan*/  FUNC15 (struct cred*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct cred*) ; 

int FUNC18(struct task_struct *p, unsigned long clone_flags)
{
#ifdef CONFIG_KEYS
	struct thread_group_cred *tgcred;
#endif
	struct cred *new;
	int ret;

	FUNC11(&p->cred_guard_mutex);
	p->replacement_session_keyring = NULL;

	if (
#ifdef CONFIG_KEYS
		!p->cred->thread_keyring &&
#endif
		clone_flags & CLONE_THREAD
	    ) {
		p->real_cred = FUNC5(p->cred);
		FUNC5(p->cred);
		FUNC0(p->cred, 2);
		FUNC7("share_creds(%p{%d,%d})",
		       p->cred, FUNC2(&p->cred->usage),
		       FUNC14(p->cred));
		FUNC1(&p->cred->user->processes);
		return 0;
	}

	new = FUNC12();
	if (!new)
		return -ENOMEM;

	if (clone_flags & CLONE_NEWUSER) {
		ret = FUNC4(new);
		if (ret < 0)
			goto error_put;
	}

#ifdef CONFIG_KEYS
	/* new threads get their own thread keyrings if their parent already
	 * had one */
	if (new->thread_keyring) {
		key_put(new->thread_keyring);
		new->thread_keyring = NULL;
		if (clone_flags & CLONE_THREAD)
			install_thread_keyring_to_cred(new);
	}

	/* we share the process and session keyrings between all the threads in
	 * a process - this is slightly icky as we violate COW credentials a
	 * bit */
	if (!(clone_flags & CLONE_THREAD)) {
		tgcred = kmalloc(sizeof(*tgcred), GFP_KERNEL);
		if (!tgcred) {
			ret = -ENOMEM;
			goto error_put;
		}
		atomic_set(&tgcred->usage, 1);
		spin_lock_init(&tgcred->lock);
		tgcred->process_keyring = NULL;
		tgcred->session_keyring = key_get(new->tgcred->session_keyring);

		release_tgcred(new);
		new->tgcred = tgcred;
	}
#endif

	FUNC1(&new->user->processes);
	p->cred = p->real_cred = FUNC5(new);
	FUNC0(new, 2);
	FUNC17(new);
	return 0;

error_put:
	FUNC13(new);
	return ret;
}