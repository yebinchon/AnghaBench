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
typedef  int /*<<< orphan*/  dt_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DT_TOK_PTR ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*) ; 

__attribute__((used)) static dt_node_t *
FUNC6(int condid)
{
	char *str;

	if (condid == 0)
		return (NULL);
	FUNC2(condid > 0);

	(void) FUNC1(&str, "%%condition_%d", FUNC0(condid));
	return (FUNC4(DT_TOK_PTR, FUNC3(FUNC5("this")),
	    FUNC3(str)));
}