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
struct request_key_auth {struct cred* cred; } ;
struct key_type {int dummy; } ;
struct cred {TYPE_2__* request_key_auth; } ;
typedef  scalar_t__ key_ref_t ;
typedef  int /*<<< orphan*/  key_match_func_t ;
struct TYPE_3__ {struct request_key_auth* data; } ;
struct TYPE_4__ {int /*<<< orphan*/  sem; TYPE_1__ payload; } ;

/* Variables and functions */
 int /*<<< orphan*/  EACCES ; 
 int /*<<< orphan*/  ENOKEY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct cred const* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct key_type key_type_request_key_auth ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (struct key_type*,void const*,int /*<<< orphan*/ ,int,struct cred const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

key_ref_t FUNC8(struct key_type *type,
				  const void *description,
				  key_match_func_t match,
				  const struct cred *cred)
{
	struct request_key_auth *rka;
	key_ref_t key_ref, ret = FUNC0(-EACCES), err;

	FUNC5();

	key_ref = FUNC6(type, description, match,
					     false, cred);
	if (!FUNC1(key_ref))
		goto found;
	err = key_ref;

	/* if this process has an instantiation authorisation key, then we also
	 * search the keyrings of the process mentioned there
	 * - we don't permit access to request_key auth keys via this method
	 */
	if (cred->request_key_auth &&
	    cred == FUNC2() &&
	    type != &key_type_request_key_auth
	    ) {
		/* defend against the auth key being revoked */
		FUNC3(&cred->request_key_auth->sem);

		if (FUNC4(cred->request_key_auth) == 0) {
			rka = cred->request_key_auth->payload.data;

			key_ref = FUNC8(type, description,
							  match, rka->cred);

			FUNC7(&cred->request_key_auth->sem);

			if (!FUNC1(key_ref))
				goto found;

			ret = key_ref;
		} else {
			FUNC7(&cred->request_key_auth->sem);
		}
	}

	/* no key - decide on the error we're going to go for */
	if (err == FUNC0(-ENOKEY) || ret == FUNC0(-ENOKEY))
		key_ref = FUNC0(-ENOKEY);
	else if (err == FUNC0(-EACCES))
		key_ref = ret;
	else
		key_ref = err;

found:
	return key_ref;
}