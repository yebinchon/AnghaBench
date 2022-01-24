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
struct child_process {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct child_process*,char const**,int) ; 
 int FUNC1 (struct child_process*) ; 

int FUNC2(const char **argv, int opt)
{
	struct child_process cmd;
	FUNC0(&cmd, argv, opt);
	return FUNC1(&cmd);
}