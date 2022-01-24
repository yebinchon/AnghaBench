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
 int /*<<< orphan*/  BTPROTO_CMTP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cmtp_proto ; 
 int /*<<< orphan*/  cmtp_sock_family_ops ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(void)
{
	int err;

	err = FUNC2(&cmtp_proto, 0);
	if (err < 0)
		return err;

	err = FUNC1(BTPROTO_CMTP, &cmtp_sock_family_ops);
	if (err < 0)
		goto error;

	return 0;

error:
	FUNC0("Can't register CMTP socket");
	FUNC3(&cmtp_proto);
	return err;
}