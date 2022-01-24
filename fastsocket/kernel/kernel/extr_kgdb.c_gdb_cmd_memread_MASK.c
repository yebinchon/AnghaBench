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
struct kgdb_state {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (char**,unsigned long*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,unsigned long) ; 
 char* remcom_in_buffer ; 
 int /*<<< orphan*/  remcom_out_buffer ; 

__attribute__((used)) static void FUNC3(struct kgdb_state *ks)
{
	char *ptr = &remcom_in_buffer[1];
	unsigned long length;
	unsigned long addr;
	int err;

	if (FUNC1(&ptr, &addr) > 0 && *ptr++ == ',' &&
					FUNC1(&ptr, &length) > 0) {
		err = FUNC2((char *)addr, remcom_out_buffer, length);
		if (err)
			FUNC0(remcom_out_buffer, err);
	} else {
		FUNC0(remcom_out_buffer, -EINVAL);
	}
}