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
struct thread_group_cred {int /*<<< orphan*/  lock; int /*<<< orphan*/  usage; } ;
struct cred {int /*<<< orphan*/  usage; int /*<<< orphan*/ * security; struct thread_group_cred* tgcred; int /*<<< orphan*/  jit_keyring; int /*<<< orphan*/ * request_key_auth; int /*<<< orphan*/ * thread_keyring; int /*<<< orphan*/  user; int /*<<< orphan*/  group_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  KEY_REQKEY_DEFL_DEFAULT ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  cred_jar ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_cred ; 
 int /*<<< orphan*/  FUNC5 (char*,struct cred*) ; 
 struct cred* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct thread_group_cred* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cred*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct cred*) ; 
 scalar_t__ FUNC10 (struct cred*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct cred*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct cred*) ; 

struct cred *FUNC14(void)
{
#ifdef CONFIG_KEYS
	struct thread_group_cred *tgcred = NULL;
#endif
	struct cred *new;

#ifdef CONFIG_KEYS
	tgcred = kzalloc(sizeof(*new->tgcred), GFP_ATOMIC);
	if (!tgcred)
		return NULL;
#endif

	new = FUNC6(cred_jar, GFP_ATOMIC);
	if (!new)
		return NULL;

	FUNC5("prepare_usermodehelper_creds() alloc %p", new);

	FUNC8(new, &init_cred, sizeof(struct cred));

	FUNC2(&new->usage, 1);
	FUNC11(new, 0);
	FUNC3(new->group_info);
	FUNC4(new->user);

#ifdef CONFIG_KEYS
	new->thread_keyring = NULL;
	new->request_key_auth = NULL;
	new->jit_keyring = KEY_REQKEY_DEFL_DEFAULT;

	atomic_set(&tgcred->usage, 1);
	spin_lock_init(&tgcred->lock);
	new->tgcred = tgcred;
#endif

#ifdef CONFIG_SECURITY
	new->security = NULL;
#endif
	if (FUNC10(new, &init_cred, GFP_ATOMIC) < 0)
		goto error;
	FUNC13(new);

	FUNC0(FUNC1(&new->usage) != 1);
	return new;

error:
	FUNC9(new);
	return NULL;
}