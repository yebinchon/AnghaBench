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
 long EACCES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEY_SETATTR ; 
 int /*<<< orphan*/  KEY_WRITE ; 
 long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

long FUNC6(key_serial_t id)
{
	key_ref_t key_ref;
	long ret;

	key_ref = FUNC5(id, 0, KEY_WRITE);
	if (FUNC0(key_ref)) {
		ret = FUNC1(key_ref);
		if (ret != -EACCES)
			goto error;
		key_ref = FUNC5(id, 0, KEY_SETATTR);
		if (FUNC0(key_ref)) {
			ret = FUNC1(key_ref);
			goto error;
		}
	}

	FUNC4(FUNC3(key_ref));
	ret = 0;

	FUNC2(key_ref);
error:
	return ret;
}