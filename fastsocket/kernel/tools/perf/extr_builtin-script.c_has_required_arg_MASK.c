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
struct script_desc {char* args; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct script_desc*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct script_desc*) ; 
 struct script_desc* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(char *script_path)
{
	struct script_desc *desc;
	int n_args = 0;
	char *p;

	desc = FUNC2(NULL);

	if (FUNC0(desc, script_path))
		goto out;

	if (!desc->args)
		goto out;

	for (p = desc->args; *p; p++)
		if (*p == '<')
			n_args++;
out:
	FUNC1(desc);

	return n_args;
}