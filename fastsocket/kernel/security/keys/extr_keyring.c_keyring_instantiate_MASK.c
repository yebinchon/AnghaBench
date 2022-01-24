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

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct key*) ; 

__attribute__((used)) static int FUNC1(struct key *keyring,
			       const void *data, size_t datalen)
{
	int ret;

	ret = -EINVAL;
	if (datalen == 0) {
		/* make the keyring available by name if it has one */
		FUNC0(keyring);
		ret = 0;
	}

	return ret;
}