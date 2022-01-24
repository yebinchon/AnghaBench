#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stat {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ Path ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIR ; 
 int /*<<< orphan*/  STR_ADDSLASH ; 
 char* FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char*,struct stat*) ; 
 int /*<<< orphan*/  debug_file ; 
 TYPE_1__* dot ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int nearmisses ; 
 char* FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC6(Path *p, const char *name)
{
    struct stat	  stb;		/* Buffer for stat, if necessary */
    char 	 *file;		/* the current filename to check */

    if (p != dot) {
	file = FUNC5(p->name, name, STR_ADDSLASH);
    } else {
	/*
	 * Checking in dot -- DON'T put a leading ./ on the thing.
	 */
	file = FUNC1(name);
    }

    if (FUNC0(DIR)) {
	FUNC3(debug_file, "checking %s ...\n", file);
    }

    if (FUNC2(file, &stb) == 0) {
	nearmisses += 1;
	return (file);
    }
    FUNC4(file);
    return NULL;
}