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
typedef  int /*<<< orphan*/  GNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  TARGET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char**) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  noExecute ; 

__attribute__((used)) static void
FUNC5(GNode *gn)
{
    if ((gn != NULL) && !FUNC1 (gn)) {
	char	  *p1;
	char 	  *file = FUNC2(TARGET, gn, &p1);

	if (!noExecute && FUNC3(file) != -1) {
	    FUNC0("*** %s removed", file);
	}

	FUNC4(p1);
    }
}