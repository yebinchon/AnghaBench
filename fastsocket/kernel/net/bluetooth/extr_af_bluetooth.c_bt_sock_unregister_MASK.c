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

/* Variables and functions */
 int BT_MAX_PROTO ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/ ** bt_proto ; 
 int /*<<< orphan*/  bt_proto_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(int proto)
{
	int err = 0;

	if (proto < 0 || proto >= BT_MAX_PROTO)
		return -EINVAL;

	FUNC0(&bt_proto_lock);

	if (!bt_proto[proto])
		err = -ENOENT;
	else
		bt_proto[proto] = NULL;

	FUNC1(&bt_proto_lock);

	return err;
}