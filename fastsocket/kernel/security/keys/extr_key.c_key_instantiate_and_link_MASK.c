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
struct key {int /*<<< orphan*/  type; int /*<<< orphan*/  description; } ;

/* Variables and functions */
 int FUNC0 (struct key*,void const*,size_t,struct key*,struct key*,unsigned long*) ; 
 int FUNC1 (struct key*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct key*,int /*<<< orphan*/ ,unsigned long) ; 

int FUNC3(struct key *key,
			     const void *data,
			     size_t datalen,
			     struct key *keyring,
			     struct key *authkey)
{
	unsigned long prealloc;
	int ret;

	if (keyring) {
		ret = FUNC1(keyring, key->type, key->description,
				       &prealloc);
		if (ret < 0)
			return ret;
	}

	ret = FUNC0(key, data, datalen, keyring, authkey,
					 &prealloc);

	if (keyring)
		FUNC2(keyring, key->type, prealloc);

	return ret;
}