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
 int ENOMEM ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,char*) ; 
 int FUNC5 (char*) ; 
 char* FUNC6 (char*,char) ; 

__attribute__((used)) static char *FUNC7(char *link)
{
	int len, n;
	char *name, *resolved, *end;

	len = 64;
	while (1) {
		n = -ENOMEM;
		name = FUNC3(len, GFP_KERNEL);
		if (name == NULL)
			goto out;

		n = FUNC1(link, name, len);
		if (n < len)
			break;
		len *= 2;
		FUNC2(name);
	}
	if (n < 0)
		goto out_free;

	if (*name == '/')
		return name;

	end = FUNC6(link, '/');
	if (end == NULL)
		return name;

	*(end + 1) = '\0';
	len = FUNC5(link) + FUNC5(name) + 1;

	resolved = FUNC3(len, GFP_KERNEL);
	if (resolved == NULL) {
		n = -ENOMEM;
		goto out_free;
	}

	FUNC4(resolved, "%s%s", link, name);
	FUNC2(name);
	FUNC2(link);
	return resolved;

 out_free:
	FUNC2(name);
 out:
	return FUNC0(n);
}