#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct request_key_auth {struct key* dest_keyring; } ;
struct TYPE_4__ {struct request_key_auth* data; } ;
struct key {int /*<<< orphan*/  sem; int /*<<< orphan*/  flags; TYPE_1__ payload; } ;
struct cred {int jit_keyring; TYPE_3__* user; TYPE_2__* tgcred; struct key* thread_keyring; struct key* request_key_auth; } ;
struct TYPE_6__ {struct key* uid_keyring; struct key* session_keyring; } ;
struct TYPE_5__ {int /*<<< orphan*/  session_keyring; struct key* process_keyring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  KEY_FLAG_REVOKED ; 
#define  KEY_REQKEY_DEFL_DEFAULT 135 
#define  KEY_REQKEY_DEFL_GROUP_KEYRING 134 
#define  KEY_REQKEY_DEFL_PROCESS_KEYRING 133 
#define  KEY_REQKEY_DEFL_REQUESTOR_KEYRING 132 
#define  KEY_REQKEY_DEFL_SESSION_KEYRING 131 
#define  KEY_REQKEY_DEFL_THREAD_KEYRING 130 
#define  KEY_REQKEY_DEFL_USER_KEYRING 129 
#define  KEY_REQKEY_DEFL_USER_SESSION_KEYRING 128 
 struct cred* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct key*) ; 
 struct key* FUNC4 (struct key*) ; 
 int /*<<< orphan*/  FUNC5 (struct key*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 struct key* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct key **_dest_keyring)
{
	struct request_key_auth *rka;
	const struct cred *cred = FUNC1();
	struct key *dest_keyring = *_dest_keyring, *authkey;

	FUNC3("%p", dest_keyring);

	/* find the appropriate keyring */
	if (dest_keyring) {
		/* the caller supplied one */
		FUNC4(dest_keyring);
	} else {
		/* use a default keyring; falling through the cases until we
		 * find one that we actually have */
		switch (cred->jit_keyring) {
		case KEY_REQKEY_DEFL_DEFAULT:
		case KEY_REQKEY_DEFL_REQUESTOR_KEYRING:
			if (cred->request_key_auth) {
				authkey = cred->request_key_auth;
				FUNC2(&authkey->sem);
				rka = authkey->payload.data;
				if (!FUNC10(KEY_FLAG_REVOKED,
					      &authkey->flags))
					dest_keyring =
						FUNC4(rka->dest_keyring);
				FUNC11(&authkey->sem);
				if (dest_keyring)
					break;
			}

		case KEY_REQKEY_DEFL_THREAD_KEYRING:
			dest_keyring = FUNC4(cred->thread_keyring);
			if (dest_keyring)
				break;

		case KEY_REQKEY_DEFL_PROCESS_KEYRING:
			dest_keyring = FUNC4(cred->tgcred->process_keyring);
			if (dest_keyring)
				break;

		case KEY_REQKEY_DEFL_SESSION_KEYRING:
			FUNC8();
			dest_keyring = FUNC4(
				FUNC7(cred->tgcred->session_keyring));
			FUNC9();

			if (dest_keyring)
				break;

		case KEY_REQKEY_DEFL_USER_SESSION_KEYRING:
			dest_keyring =
				FUNC4(cred->user->session_keyring);
			break;

		case KEY_REQKEY_DEFL_USER_KEYRING:
			dest_keyring = FUNC4(cred->user->uid_keyring);
			break;

		case KEY_REQKEY_DEFL_GROUP_KEYRING:
		default:
			FUNC0();
		}
	}

	*_dest_keyring = dest_keyring;
	FUNC6(" [dk %d]", FUNC5(dest_keyring));
	return;
}