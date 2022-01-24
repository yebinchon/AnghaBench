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
typedef  int /*<<< orphan*/  key_serial_t ;
typedef  int /*<<< orphan*/  key_ref_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEY_LOOKUP_FOR_UNLINK ; 
 int /*<<< orphan*/  KEY_WRITE ; 
 long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 long FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

long FUNC6(key_serial_t id, key_serial_t ringid)
{
	key_ref_t keyring_ref, key_ref;
	long ret;

	keyring_ref = FUNC5(ringid, 0, KEY_WRITE);
	if (FUNC0(keyring_ref)) {
		ret = FUNC1(keyring_ref);
		goto error;
	}

	key_ref = FUNC5(id, KEY_LOOKUP_FOR_UNLINK, 0);
	if (FUNC0(key_ref)) {
		ret = FUNC1(key_ref);
		goto error2;
	}

	ret = FUNC4(FUNC3(keyring_ref), FUNC3(key_ref));

	FUNC2(key_ref);
error2:
	FUNC2(keyring_ref);
error:
	return ret;
}