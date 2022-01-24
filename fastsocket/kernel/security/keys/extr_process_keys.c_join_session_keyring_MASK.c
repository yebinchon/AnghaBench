#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct key {long serial; } ;
struct cred {int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; TYPE_2__* tgcred; } ;
struct TYPE_4__ {TYPE_1__* session_keyring; } ;
struct TYPE_3__ {long serial; } ;

/* Variables and functions */
 long EMLINK ; 
 long ENOKEY ; 
 long ENOMEM ; 
 scalar_t__ FUNC0 (struct key*) ; 
 int /*<<< orphan*/  KEY_ALLOC_IN_QUOTA ; 
 long FUNC1 (struct key*) ; 
 int /*<<< orphan*/  FUNC2 (struct cred*) ; 
 long FUNC3 (struct cred*) ; 
 struct cred* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct key* FUNC6 (char const*,int) ; 
 long FUNC7 (struct cred*,struct key*) ; 
 int /*<<< orphan*/  FUNC8 (struct key*) ; 
 int /*<<< orphan*/  key_session_mutex ; 
 struct key* FUNC9 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cred const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct cred* FUNC12 () ; 

long FUNC13(const char *name)
{
	const struct cred *old;
	struct cred *new;
	struct key *keyring;
	long ret, serial;

	/* only permit this if there's a single thread in the thread group -
	 * this avoids us having to adjust the creds on all threads and risking
	 * ENOMEM */
	if (!FUNC5())
		return -EMLINK;

	new = FUNC12();
	if (!new)
		return -ENOMEM;
	old = FUNC4();

	/* if no name is provided, install an anonymous keyring */
	if (!name) {
		ret = FUNC7(new, NULL);
		if (ret < 0)
			goto error;

		serial = new->tgcred->session_keyring->serial;
		ret = FUNC3(new);
		if (ret == 0)
			ret = serial;
		goto okay;
	}

	/* allow the user to join or create a named keyring */
	FUNC10(&key_session_mutex);

	/* look for an existing keyring of this name */
	keyring = FUNC6(name, false);
	if (FUNC1(keyring) == -ENOKEY) {
		/* not found - try and create a new one */
		keyring = FUNC9(name, old->uid, old->gid, old,
					KEY_ALLOC_IN_QUOTA, NULL);
		if (FUNC0(keyring)) {
			ret = FUNC1(keyring);
			goto error2;
		}
	} else if (FUNC0(keyring)) {
		ret = FUNC1(keyring);
		goto error2;
	}

	/* we've got a keyring - now to install it */
	ret = FUNC7(new, keyring);
	if (ret < 0)
		goto error2;

	FUNC3(new);
	FUNC11(&key_session_mutex);

	ret = keyring->serial;
	FUNC8(keyring);
okay:
	return ret;

error2:
	FUNC11(&key_session_mutex);
error:
	FUNC2(new);
	return ret;
}