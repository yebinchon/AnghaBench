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
struct timespec {scalar_t__ tv_sec; } ;
struct key {scalar_t__ expiry; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EKEYEXPIRED ; 
 int EKEYREVOKED ; 
 int /*<<< orphan*/  KEY_FLAG_DEAD ; 
 int /*<<< orphan*/  KEY_FLAG_REVOKED ; 
 struct timespec FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC2(struct key *key)
{
	struct timespec now;
	int ret = 0;

	if (key) {
		/* check it's still accessible */
		ret = -EKEYREVOKED;
		if (FUNC1(KEY_FLAG_REVOKED, &key->flags) ||
		    FUNC1(KEY_FLAG_DEAD, &key->flags))
			goto error;

		/* check it hasn't expired */
		ret = 0;
		if (key->expiry) {
			now = FUNC0();
			if (now.tv_sec >= key->expiry)
				ret = -EKEYEXPIRED;
		}
	}

error:
	return ret;
}