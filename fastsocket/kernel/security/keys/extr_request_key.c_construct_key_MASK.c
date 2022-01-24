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
struct key_construction {void* key; void* authkey; } ;
struct key {int /*<<< orphan*/  flags; TYPE_1__* type; int /*<<< orphan*/  serial; } ;
typedef  int (* request_key_actor_t ) (struct key_construction*,char*,void*) ;
struct TYPE_2__ {int (* request_key ) (struct key_construction*,char*,void*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct key*) ; 
 int /*<<< orphan*/  KEY_FLAG_REVOKED ; 
 int FUNC1 (struct key*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct key_construction*,char*,void*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,void const*,size_t,void*) ; 
 void* FUNC5 (struct key*) ; 
 int /*<<< orphan*/  FUNC6 (struct key*) ; 
 int /*<<< orphan*/  FUNC7 (struct key_construction*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 struct key_construction* FUNC9 (int,int /*<<< orphan*/ ) ; 
 struct key* FUNC10 (struct key*,void const*,size_t,struct key*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct key *key, const void *callout_info,
			 size_t callout_len, void *aux,
			 struct key *dest_keyring)
{
	struct key_construction *cons;
	request_key_actor_t actor;
	struct key *authkey;
	int ret;

	FUNC4("%d,%p,%zu,%p", key->serial, callout_info, callout_len, aux);

	cons = FUNC9(sizeof(*cons), GFP_KERNEL);
	if (!cons)
		return -ENOMEM;

	/* allocate an authorisation key */
	authkey = FUNC10(key, callout_info, callout_len,
				       dest_keyring);
	if (FUNC0(authkey)) {
		FUNC7(cons);
		ret = FUNC1(authkey);
		authkey = NULL;
	} else {
		cons->authkey = FUNC5(authkey);
		cons->key = FUNC5(key);

		/* make the call */
		actor = call_sbin_request_key;
		if (key->type->request_key)
			actor = key->type->request_key;

		ret = actor(cons, "create", aux);

		/* check that the actor called complete_request_key() prior to
		 * returning an error */
		FUNC2(ret < 0 &&
			!FUNC11(KEY_FLAG_REVOKED, &authkey->flags));
		FUNC6(authkey);
	}

	FUNC8(" = %d", ret);
	return ret;
}