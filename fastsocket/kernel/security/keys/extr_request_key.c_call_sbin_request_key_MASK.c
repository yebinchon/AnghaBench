#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct key_construction {struct key* authkey; struct key* key; } ;
struct key {int serial; int /*<<< orphan*/  flags; } ;
struct cred {int fsuid; int fsgid; TYPE_4__* user; TYPE_3__* tgcred; TYPE_1__* thread_keyring; } ;
typedef  int key_serial_t ;
struct TYPE_8__ {struct key* session_keyring; } ;
struct TYPE_7__ {int /*<<< orphan*/  session_keyring; TYPE_2__* process_keyring; } ;
struct TYPE_6__ {int serial; } ;
struct TYPE_5__ {int serial; } ;

/* Variables and functions */
 int ENOKEY ; 
 scalar_t__ FUNC0 (struct key*) ; 
 int /*<<< orphan*/  KEY_ALLOC_QUOTA_OVERRUN ; 
 int /*<<< orphan*/  KEY_FLAG_USER_CONSTRUCT ; 
 int FUNC1 (struct key*) ; 
 int /*<<< orphan*/  UMH_WAIT_PROC ; 
 int FUNC2 (char*,char**,char**,struct key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct key_construction*,int) ; 
 struct cred* FUNC4 () ; 
 struct cred* FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int,char const*) ; 
 int FUNC9 (struct key*,struct key*) ; 
 int /*<<< orphan*/  FUNC10 (struct key*) ; 
 scalar_t__ FUNC11 (struct key*) ; 
 struct key* FUNC12 (char*,int,int,struct cred const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct cred const*) ; 
 struct key* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (char*,char*,int) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct key_construction *cons,
				 const char *op,
				 void *aux)
{
	const struct cred *cred = FUNC4();
	key_serial_t prkey, sskey;
	struct key *key = cons->key, *authkey = cons->authkey, *keyring,
		*session;
	char *argv[9], *envp[3], uid_str[12], gid_str[12];
	char key_str[12], keyring_str[3][12];
	char desc[20];
	int ret, i;

	FUNC8("{%d},{%d},%s", key->serial, authkey->serial, op);

	ret = FUNC6();
	if (ret < 0)
		goto error_alloc;

	/* allocate a new session keyring */
	FUNC18(desc, "_req.%u", key->serial);

	cred = FUNC5();
	keyring = FUNC12(desc, cred->fsuid, cred->fsgid, cred,
				KEY_ALLOC_QUOTA_OVERRUN, NULL);
	FUNC14(cred);
	if (FUNC0(keyring)) {
		ret = FUNC1(keyring);
		goto error_alloc;
	}

	/* attach the auth key to the session keyring */
	ret = FUNC9(keyring, authkey);
	if (ret < 0)
		goto error_link;

	/* record the UID and GID */
	FUNC18(uid_str, "%d", cred->fsuid);
	FUNC18(gid_str, "%d", cred->fsgid);

	/* we say which key is under construction */
	FUNC18(key_str, "%d", key->serial);

	/* we specify the process's default keyrings */
	FUNC18(keyring_str[0], "%d",
		cred->thread_keyring ? cred->thread_keyring->serial : 0);

	prkey = 0;
	if (cred->tgcred->process_keyring)
		prkey = cred->tgcred->process_keyring->serial;
	FUNC18(keyring_str[1], "%d", prkey);

	FUNC16();
	session = FUNC15(cred->tgcred->session_keyring);
	if (!session)
		session = cred->user->session_keyring;
	sskey = session->serial;
	FUNC17();

	FUNC18(keyring_str[2], "%d", sskey);

	/* set up a minimal environment */
	i = 0;
	envp[i++] = "HOME=/";
	envp[i++] = "PATH=/sbin:/bin:/usr/sbin:/usr/bin";
	envp[i] = NULL;

	/* set up the argument list */
	i = 0;
	argv[i++] = "/sbin/request-key";
	argv[i++] = (char *) op;
	argv[i++] = key_str;
	argv[i++] = uid_str;
	argv[i++] = gid_str;
	argv[i++] = keyring_str[0];
	argv[i++] = keyring_str[1];
	argv[i++] = keyring_str[2];
	argv[i] = NULL;

	/* do it */
	ret = FUNC2(argv[0], argv, envp, keyring,
				       UMH_WAIT_PROC);
	FUNC7("usermode -> 0x%x", ret);
	if (ret >= 0) {
		/* ret is the exit/wait code */
		if (FUNC19(KEY_FLAG_USER_CONSTRUCT, &key->flags) ||
		    FUNC11(key) < 0)
			ret = -ENOKEY;
		else
			/* ignore any errors from userspace if the key was
			 * instantiated */
			ret = 0;
	}

error_link:
	FUNC10(keyring);

error_alloc:
	FUNC3(cons, ret);
	FUNC13(" = %d", ret);
	return ret;
}