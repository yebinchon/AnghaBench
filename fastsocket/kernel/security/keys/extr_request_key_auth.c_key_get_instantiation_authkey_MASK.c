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
struct key {int /*<<< orphan*/  flags; } ;
struct cred {int dummy; } ;
typedef  scalar_t__ key_serial_t ;
typedef  int /*<<< orphan*/  key_ref_t ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EKEYREVOKED ; 
 int /*<<< orphan*/  ENOKEY ; 
 struct key* FUNC0 (int /*<<< orphan*/ ) ; 
 struct key* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEY_FLAG_REVOKED ; 
 struct cred* FUNC3 () ; 
 int /*<<< orphan*/  key_get_instantiation_authkey_match ; 
 int /*<<< orphan*/  FUNC4 (struct key*) ; 
 struct key* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  key_type_request_key_auth ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,struct cred const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct key *FUNC8(key_serial_t target_id)
{
	const struct cred *cred = FUNC3();
	struct key *authkey;
	key_ref_t authkey_ref;

	authkey_ref = FUNC6(
		&key_type_request_key_auth,
		(void *) (unsigned long) target_id,
		key_get_instantiation_authkey_match,
		cred);

	if (FUNC2(authkey_ref)) {
		authkey = FUNC0(authkey_ref);
		if (authkey == FUNC1(-EAGAIN))
			authkey = FUNC1(-ENOKEY);
		goto error;
	}

	authkey = FUNC5(authkey_ref);
	if (FUNC7(KEY_FLAG_REVOKED, &authkey->flags)) {
		FUNC4(authkey);
		authkey = FUNC1(-EKEYREVOKED);
	}

error:
	return authkey;
}