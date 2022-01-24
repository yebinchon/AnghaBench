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
struct key {int dummy; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 struct key* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct key*) ; 
 int /*<<< orphan*/  KEY_ALLOC_NOT_IN_QUOTA ; 
 int /*<<< orphan*/  KEY_POS_SEARCH ; 
 struct cred* FUNC2 () ; 
 struct key* FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cred const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct key*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct key*) ; 
 int /*<<< orphan*/  FUNC6 (struct key*) ; 
 int /*<<< orphan*/  key_type_rxrpc ; 

struct key *FUNC7(const char *keyname)
{
	const struct cred *cred = FUNC2();
	struct key *key;
	int ret;

	key = FUNC3(&key_type_rxrpc, keyname, 0, 0, cred,
			KEY_POS_SEARCH, KEY_ALLOC_NOT_IN_QUOTA);
	if (FUNC1(key))
		return key;

	ret = FUNC4(key, NULL, 0, NULL, NULL);
	if (ret < 0) {
		FUNC6(key);
		FUNC5(key);
		return FUNC0(ret);
	}

	return key;
}