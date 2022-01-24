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
 int FDT_ERR_BADPATH ; 
 int FUNC0 (char*,int,char*) ; 
 int FUNC1 (char*,char const*) ; 
 char* FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int,int) ; 
 char* FUNC4 (char const*,char) ; 

__attribute__((used)) static int FUNC5(char **blob, const char *node_name)
{
	int node = 0;
	char *p;

	p = FUNC4(node_name, '/');
	if (!p) {
		FUNC3(node_name, -1, -FDT_ERR_BADPATH);
		return -1;
	}
	*p = '\0';

	*blob = FUNC2(*blob, p + 1);

	if (p > node_name) {
		node = FUNC1(*blob, node_name);
		if (node < 0) {
			FUNC3(node_name, -1, node);
			return -1;
		}
	}

	node = FUNC0(*blob, node, p + 1);
	if (node < 0) {
		FUNC3(p + 1, -1, node);
		return -1;
	}

	return 0;
}