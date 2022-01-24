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
struct user_struct {int uid; struct key* session_keyring; struct key* uid_keyring; } ;
struct key {int dummy; } ;
struct cred {struct user_struct* user; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct key*) ; 
 int /*<<< orphan*/  KEY_ALLOC_IN_QUOTA ; 
 int FUNC1 (struct key*) ; 
 struct cred* FUNC2 () ; 
 struct key* FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct user_struct*,int) ; 
 int FUNC5 (struct key*,struct key*) ; 
 int /*<<< orphan*/  FUNC6 (struct key*) ; 
 int /*<<< orphan*/  key_user_keyring_mutex ; 
 struct key* FUNC7 (char*,int,int /*<<< orphan*/ ,struct cred const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 

int FUNC12(void)
{
	struct user_struct *user;
	const struct cred *cred;
	struct key *uid_keyring, *session_keyring;
	char buf[20];
	int ret;

	cred = FUNC2();
	user = cred->user;

	FUNC4("%p{%u}", user, user->uid);

	if (user->uid_keyring && user->session_keyring) {
		FUNC8(" = 0 [exist]");
		return 0;
	}

	FUNC9(&key_user_keyring_mutex);
	ret = 0;

	if (!user->uid_keyring) {
		/* get the UID-specific keyring
		 * - there may be one in existence already as it may have been
		 *   pinned by a session, but the user_struct pointing to it
		 *   may have been destroyed by setuid */
		FUNC11(buf, "_uid.%u", user->uid);

		uid_keyring = FUNC3(buf, true);
		if (FUNC0(uid_keyring)) {
			uid_keyring = FUNC7(buf, user->uid, (gid_t) -1,
						    cred, KEY_ALLOC_IN_QUOTA,
						    NULL);
			if (FUNC0(uid_keyring)) {
				ret = FUNC1(uid_keyring);
				goto error;
			}
		}

		/* get a default session keyring (which might also exist
		 * already) */
		FUNC11(buf, "_uid_ses.%u", user->uid);

		session_keyring = FUNC3(buf, true);
		if (FUNC0(session_keyring)) {
			session_keyring =
				FUNC7(buf, user->uid, (gid_t) -1,
					      cred, KEY_ALLOC_IN_QUOTA, NULL);
			if (FUNC0(session_keyring)) {
				ret = FUNC1(session_keyring);
				goto error_release;
			}

			/* we install a link from the user session keyring to
			 * the user keyring */
			ret = FUNC5(session_keyring, uid_keyring);
			if (ret < 0)
				goto error_release_both;
		}

		/* install the keyrings */
		user->uid_keyring = uid_keyring;
		user->session_keyring = session_keyring;
	}

	FUNC10(&key_user_keyring_mutex);
	FUNC8(" = 0");
	return 0;

error_release_both:
	FUNC6(session_keyring);
error_release:
	FUNC6(uid_keyring);
error:
	FUNC10(&key_user_keyring_mutex);
	FUNC8(" = %d", ret);
	return ret;
}