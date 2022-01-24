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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char) ; 
 char* FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(char *line, char **namep, char **rawp)
{
	char *name = line, tmp;

	while (FUNC1(name[0]))
		++name;

	if (name[0] == '\0')
		return -1;

	*rawp = name + 1;

	while ((*rawp)[0] != '\0' && !FUNC1((*rawp)[0]))
		++*rawp;

	tmp = (*rawp)[0];
	(*rawp)[0] = '\0';
	*namep = FUNC2(name);

	if (*namep == NULL)
		goto out_free_name;

	(*rawp)[0] = tmp;

	if ((*rawp)[0] != '\0') {
		(*rawp)++;
		while (FUNC1((*rawp)[0]))
			++(*rawp);
	}

	return 0;

out_free_name:
	FUNC0(*namep);
	*namep = NULL;
	return -1;
}