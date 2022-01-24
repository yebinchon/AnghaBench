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
struct cred {struct key* request_key_auth; } ;
typedef  scalar_t__ key_serial_t ;
struct TYPE_4__ {scalar_t__ serial; } ;

/* Variables and functions */
 long EINVAL ; 
 long EPERM ; 
 unsigned int ERESTARTNOHAND ; 
 unsigned int ERESTARTNOINTR ; 
 unsigned int ERESTARTSYS ; 
 unsigned int ERESTART_RESTARTBLOCK ; 
 unsigned int MAX_ERRNO ; 
 struct cred* FUNC0 () ; 
 long FUNC1 (scalar_t__,struct request_key_auth*,struct key**) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,unsigned int,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct key*) ; 
 long FUNC4 (TYPE_2__*,unsigned int,unsigned int,struct key*,struct key*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

long FUNC6(key_serial_t id, unsigned timeout, unsigned error,
		       key_serial_t ringid)
{
	const struct cred *cred = FUNC0();
	struct request_key_auth *rka;
	struct key *instkey, *dest_keyring;
	long ret;

	FUNC2("%d,%u,%u,%d", id, timeout, error, ringid);

	/* must be a valid error code and mustn't be a kernel special */
	if (error <= 0 ||
	    error >= MAX_ERRNO ||
	    error == ERESTARTSYS ||
	    error == ERESTARTNOINTR ||
	    error == ERESTARTNOHAND ||
	    error == ERESTART_RESTARTBLOCK)
		return -EINVAL;

	/* the appropriate instantiation authorisation key must have been
	 * assumed before calling this */
	ret = -EPERM;
	instkey = cred->request_key_auth;
	if (!instkey)
		goto error;

	rka = instkey->payload.data;
	if (rka->target_key->serial != id)
		goto error;

	/* find the destination keyring if present (which must also be
	 * writable) */
	ret = FUNC1(ringid, rka, &dest_keyring);
	if (ret < 0)
		goto error;

	/* instantiate the key and link it into a keyring */
	ret = FUNC4(rka->target_key, timeout, error,
				  dest_keyring, instkey);

	FUNC3(dest_keyring);

	/* discard the assumed authority if it's just been disabled by
	 * instantiation of the key */
	if (ret == 0)
		FUNC5(NULL);

error:
	return ret;
}