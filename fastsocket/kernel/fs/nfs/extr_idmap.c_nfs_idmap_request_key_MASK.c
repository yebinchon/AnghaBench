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
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
struct user_key_payload {int perm; size_t datalen; int /*<<< orphan*/  data; TYPE_1__ payload; } ;
struct key {int perm; size_t datalen; int /*<<< orphan*/  data; TYPE_1__ payload; } ;
struct cred {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 scalar_t__ FUNC0 (struct user_key_payload*) ; 
 scalar_t__ FUNC1 (struct user_key_payload*) ; 
 int KEY_USR_VIEW ; 
 int KEY_USR_WRITE ; 
 size_t FUNC2 (struct user_key_payload*) ; 
 int /*<<< orphan*/  id_resolver_cache ; 
 int /*<<< orphan*/  FUNC3 (struct user_key_payload*) ; 
 int /*<<< orphan*/  key_type_id_resolver ; 
 size_t FUNC4 (struct user_key_payload*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC7 (char const*,size_t,char const*,int /*<<< orphan*/ ,char**) ; 
 struct cred* FUNC8 (int /*<<< orphan*/ ) ; 
 struct user_key_payload* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 struct user_key_payload* FUNC12 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct cred const*) ; 
 int /*<<< orphan*/  FUNC14 (char const*) ; 

__attribute__((used)) static ssize_t FUNC15(const char *name, size_t namelen,
		const char *type, void *data, size_t data_size)
{
	const struct cred *saved_cred;
	struct key *rkey;
	char *desc;
	struct user_key_payload *payload;
	ssize_t ret;

	ret = FUNC7(name, namelen, type, FUNC14(type), &desc);
	if (ret <= 0)
		goto out;

	saved_cred = FUNC8(id_resolver_cache);
	rkey = FUNC12(&key_type_id_resolver, desc, "");
	FUNC13(saved_cred);
	FUNC5(desc);
	if (FUNC0(rkey)) {
		ret = FUNC2(rkey);
		goto out;
	}

	FUNC10();
	rkey->perm |= KEY_USR_VIEW|KEY_USR_WRITE;

	ret = FUNC4(rkey);
	if (ret < 0)
		goto out_up;

	payload = FUNC9(rkey->payload.data);
	if (FUNC1(payload)) {
		ret = FUNC2(payload);
		goto out_up;
	}

	ret = payload->datalen;
	if (ret > 0 && ret <= data_size)
		FUNC6(data, payload->data, ret);
	else
		ret = -EINVAL;

out_up:
	FUNC11();
	FUNC3(rkey);
out:
	return ret;
}