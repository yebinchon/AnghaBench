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
struct thread_group_cred {int /*<<< orphan*/ * process_keyring; int /*<<< orphan*/  session_keyring; int /*<<< orphan*/  lock; int /*<<< orphan*/  usage; } ;
struct cred {struct thread_group_cred* tgcred; int /*<<< orphan*/ * thread_keyring; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct thread_group_cred*) ; 
 struct thread_group_cred* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct thread_group_cred*,struct thread_group_cred*,int) ; 
 struct cred* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct cred*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

struct cred *FUNC9(void)
{
	struct thread_group_cred *tgcred = NULL;
	struct cred *new;

#ifdef CONFIG_KEYS
	tgcred = kmalloc(sizeof(*tgcred), GFP_KERNEL);
	if (!tgcred)
		return NULL;
#endif

	new = FUNC6();
	if (!new) {
		FUNC3(tgcred);
		return new;
	}

#ifdef CONFIG_KEYS
	/* newly exec'd tasks don't get a thread keyring */
	key_put(new->thread_keyring);
	new->thread_keyring = NULL;

	/* create a new per-thread-group creds for all this set of threads to
	 * share */
	memcpy(tgcred, new->tgcred, sizeof(struct thread_group_cred));

	atomic_set(&tgcred->usage, 1);
	spin_lock_init(&tgcred->lock);

	/* inherit the session keyring; new process keyring */
	key_get(tgcred->session_keyring);
	tgcred->process_keyring = NULL;

	release_tgcred(new);
	new->tgcred = tgcred;
#endif

	return new;
}