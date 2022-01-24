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
struct request_key_auth {TYPE_2__* target_key; } ;
struct TYPE_3__ {struct request_key_auth* data; } ;
struct key {TYPE_1__ payload; } ;
struct iovec {int dummy; } ;
struct cred {struct key* request_key_auth; } ;
typedef  scalar_t__ key_serial_t ;
struct TYPE_4__ {scalar_t__ serial; } ;

/* Variables and functions */
 long EINVAL ; 
 long ENOMEM ; 
 long EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t PAGE_SIZE ; 
 long FUNC0 (void*,struct iovec const*,unsigned int) ; 
 struct cred* FUNC1 () ; 
 long FUNC2 (scalar_t__,struct request_key_auth*,struct key**) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,size_t,scalar_t__) ; 
 long FUNC4 (TYPE_2__*,void*,size_t,struct key*,struct key*) ; 
 int /*<<< orphan*/  FUNC5 (struct key*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 void* FUNC8 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 void* FUNC10 (size_t) ; 

long FUNC11(key_serial_t id,
				   const struct iovec *payload_iov,
				   unsigned ioc,
				   size_t plen,
				   key_serial_t ringid)
{
	const struct cred *cred = FUNC1();
	struct request_key_auth *rka;
	struct key *instkey, *dest_keyring;
	void *payload;
	long ret;
	bool vm = false;

	FUNC3("%d,,%zu,%d", id, plen, ringid);

	ret = -EINVAL;
	if (plen > 1024 * 1024 - 1)
		goto error;

	/* the appropriate instantiation authorisation key must have been
	 * assumed before calling this */
	ret = -EPERM;
	instkey = cred->request_key_auth;
	if (!instkey)
		goto error;

	rka = instkey->payload.data;
	if (rka->target_key->serial != id)
		goto error;

	/* pull the payload in if one was supplied */
	payload = NULL;

	if (payload_iov) {
		ret = -ENOMEM;
		payload = FUNC8(plen, GFP_KERNEL);
		if (!payload) {
			if (plen <= PAGE_SIZE)
				goto error;
			vm = true;
			payload = FUNC10(plen);
			if (!payload)
				goto error;
		}

		ret = FUNC0(payload, payload_iov, ioc);
		if (ret < 0)
			goto error2;
	}

	/* find the destination keyring amongst those belonging to the
	 * requesting task */
	ret = FUNC2(ringid, rka, &dest_keyring);
	if (ret < 0)
		goto error2;

	/* instantiate the key and link it into a keyring */
	ret = FUNC4(rka->target_key, payload, plen,
				       dest_keyring, instkey);

	FUNC5(dest_keyring);

	/* discard the assumed authority if it's just been disabled by
	 * instantiation of the key */
	if (ret == 0)
		FUNC6(NULL);

error2:
	if (!vm)
		FUNC7(payload);
	else
		FUNC9(payload);
error:
	return ret;
}