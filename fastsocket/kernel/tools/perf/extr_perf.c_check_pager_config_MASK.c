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
struct pager_config {char const* cmd; int val; } ;

/* Variables and functions */
 int /*<<< orphan*/  pager_command_config ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct pager_config*) ; 

int FUNC1(const char *cmd)
{
	struct pager_config c;
	c.cmd = cmd;
	c.val = -1;
	FUNC0(pager_command_config, &c);
	return c.val;
}