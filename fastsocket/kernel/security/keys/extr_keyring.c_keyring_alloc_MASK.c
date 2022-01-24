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
typedef  int /*<<< orphan*/  uid_t ;
struct key {int dummy; } ;
struct cred {int dummy; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 struct key* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct key*) ; 
 int KEY_POS_ALL ; 
 int KEY_POS_SETATTR ; 
 int KEY_USR_ALL ; 
 struct key* FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cred const*,int,unsigned long) ; 
 int FUNC3 (struct key*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct key*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct key*) ; 
 int /*<<< orphan*/  key_type_keyring ; 

struct key *FUNC5(const char *description, uid_t uid, gid_t gid,
			  const struct cred *cred, unsigned long flags,
			  struct key *dest)
{
	struct key *keyring;
	int ret;

	keyring = FUNC2(&key_type_keyring, description,
			    uid, gid, cred,
			    (KEY_POS_ALL & ~KEY_POS_SETATTR) | KEY_USR_ALL,
			    flags);

	if (!FUNC1(keyring)) {
		ret = FUNC3(keyring, NULL, 0, dest, NULL);
		if (ret < 0) {
			FUNC4(keyring);
			keyring = FUNC0(ret);
		}
	}

	return keyring;
}