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
struct kgdb_state {int pass_exception; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ kgdb_connected ; 
 char* remcom_in_buffer ; 
 int /*<<< orphan*/  remcom_out_buffer ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static int FUNC2(struct kgdb_state *ks)
{
	/* C09 == pass exception
	 * C15 == detach kgdb, pass exception
	 */
	if (remcom_in_buffer[1] == '0' && remcom_in_buffer[2] == '9') {

		ks->pass_exception = 1;
		remcom_in_buffer[0] = 'c';

	} else if (remcom_in_buffer[1] == '1' && remcom_in_buffer[2] == '5') {

		ks->pass_exception = 1;
		remcom_in_buffer[0] = 'D';
		FUNC1();
		kgdb_connected = 0;
		return 1;

	} else {
		FUNC0(remcom_out_buffer, -EINVAL);
		return 0;
	}

	/* Indicate fall through */
	return -1;
}