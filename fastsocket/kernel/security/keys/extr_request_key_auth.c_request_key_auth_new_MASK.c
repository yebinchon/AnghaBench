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
struct request_key_auth {size_t callout_len; struct request_key_auth* callout_info; struct key* dest_keyring; struct key* target_key; int /*<<< orphan*/  pid; struct cred const* cred; } ;
struct key {int serial; int /*<<< orphan*/  usage; } ;
struct cred {TYPE_2__* request_key_auth; int /*<<< orphan*/  fsgid; int /*<<< orphan*/  fsuid; } ;
struct TYPE_6__ {int /*<<< orphan*/  pid; struct cred* cred; } ;
struct TYPE_4__ {struct request_key_auth* data; } ;
struct TYPE_5__ {int /*<<< orphan*/  sem; TYPE_1__ payload; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EKEYREVOKED ; 
 int ENOMEM ; 
 struct key* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct key*) ; 
 int /*<<< orphan*/  KEY_ALLOC_NOT_IN_QUOTA ; 
 int /*<<< orphan*/  KEY_FLAG_REVOKED ; 
 int KEY_POS_READ ; 
 int KEY_POS_SEARCH ; 
 int KEY_POS_VIEW ; 
 int KEY_USR_VIEW ; 
 int FUNC2 (struct key*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (struct cred const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 struct key* FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cred const*,int,int /*<<< orphan*/ ) ; 
 void* FUNC8 (struct key*) ; 
 int FUNC9 (struct key*,struct request_key_auth*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct key*) ; 
 int /*<<< orphan*/  FUNC11 (struct key*) ; 
 int /*<<< orphan*/  key_type_request_key_auth ; 
 int /*<<< orphan*/  FUNC12 (struct request_key_auth*) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 void* FUNC14 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct request_key_auth*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

struct key *FUNC19(struct key *target, const void *callout_info,
				 size_t callout_len, struct key *dest_keyring)
{
	struct request_key_auth *rka, *irka;
	const struct cred *cred = current->cred;
	struct key *authkey = NULL;
	char desc[20];
	int ret;

	FUNC6("%d,", target->serial);

	/* allocate a auth record */
	rka = FUNC14(sizeof(*rka), GFP_KERNEL);
	if (!rka) {
		FUNC13(" = -ENOMEM");
		return FUNC0(-ENOMEM);
	}
	rka->callout_info = FUNC14(callout_len, GFP_KERNEL);
	if (!rka->callout_info) {
		FUNC13(" = -ENOMEM");
		FUNC12(rka);
		return FUNC0(-ENOMEM);
	}

	/* see if the calling process is already servicing the key request of
	 * another process */
	if (cred->request_key_auth) {
		/* it is - use that instantiation context here too */
		FUNC4(&cred->request_key_auth->sem);

		/* if the auth key has been revoked, then the key we're
		 * servicing is already instantiated */
		if (FUNC17(KEY_FLAG_REVOKED, &cred->request_key_auth->flags))
			goto auth_key_revoked;

		irka = cred->request_key_auth->payload.data;
		rka->cred = FUNC5(irka->cred);
		rka->pid = irka->pid;

		FUNC18(&cred->request_key_auth->sem);
	}
	else {
		/* it isn't - use this process as the context */
		rka->cred = FUNC5(cred);
		rka->pid = current->pid;
	}

	rka->target_key = FUNC8(target);
	rka->dest_keyring = FUNC8(dest_keyring);
	FUNC15(rka->callout_info, callout_info, callout_len);
	rka->callout_len = callout_len;

	/* allocate the auth key */
	FUNC16(desc, "%x", target->serial);

	authkey = FUNC7(&key_type_request_key_auth, desc,
			    cred->fsuid, cred->fsgid, cred,
			    KEY_POS_VIEW | KEY_POS_READ | KEY_POS_SEARCH |
			    KEY_USR_VIEW, KEY_ALLOC_NOT_IN_QUOTA);
	if (FUNC1(authkey)) {
		ret = FUNC2(authkey);
		goto error_alloc;
	}

	/* construct the auth key */
	ret = FUNC9(authkey, rka, 0, NULL, NULL);
	if (ret < 0)
		goto error_inst;

	FUNC13(" = {%d,%d}", authkey->serial, FUNC3(&authkey->usage));
	return authkey;

auth_key_revoked:
	FUNC18(&cred->request_key_auth->sem);
	FUNC12(rka->callout_info);
	FUNC12(rka);
	FUNC13("= -EKEYREVOKED");
	return FUNC0(-EKEYREVOKED);

error_inst:
	FUNC11(authkey);
	FUNC10(authkey);
error_alloc:
	FUNC10(rka->target_key);
	FUNC10(rka->dest_keyring);
	FUNC12(rka->callout_info);
	FUNC12(rka);
	FUNC13("= %d", ret);
	return FUNC0(ret);
}