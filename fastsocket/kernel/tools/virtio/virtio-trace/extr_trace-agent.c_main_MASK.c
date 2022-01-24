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
struct agent_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct agent_info*) ; 
 struct agent_info* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct agent_info*) ; 
 int /*<<< orphan*/  FUNC3 (int,char**,struct agent_info*) ; 

int FUNC4(int argc, char *argv[])
{
	struct agent_info *s = NULL;

	s = FUNC1();
	FUNC3(argc, argv, s);

	FUNC2(s);

	FUNC0(s);

	return 0;
}