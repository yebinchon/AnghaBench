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
struct carlu {int dummy; } ;
struct carl9170_cmd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARL9170_CMD_REBOOT_ASYNC ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct carl9170_cmd*) ; 
 int FUNC1 (struct carl9170_cmd*) ; 
 struct carl9170_cmd* FUNC2 (struct carlu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct carlu*,struct carl9170_cmd*,int) ; 

int FUNC4(struct carlu *ar)
{
	struct carl9170_cmd *reboot;
	int err;

	/* sure, we could put the struct on the stack too. */
	reboot = FUNC2(ar, CARL9170_CMD_REBOOT_ASYNC, 0);
	if (FUNC0(reboot))
		return reboot ? FUNC1(reboot) : -ENOMEM;

	err = FUNC3(ar, reboot, true);
	return err;
}