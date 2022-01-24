#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* name; } ;
struct TYPE_6__ {char* name; int /*<<< orphan*/  files; } ;
typedef  TYPE_1__ Path ;
typedef  int /*<<< orphan*/  Lst ;
typedef  int /*<<< orphan*/  Hash_Search ;
typedef  TYPE_2__ Hash_Entry ;
typedef  int Boolean ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STR_ADDSLASH ; 
 scalar_t__ FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(const char *pattern, Path *p, Lst expansions)
{
    Hash_Search	  search;   	/* Index into the directory's table */
    Hash_Entry	  *entry;   	/* Current entry in the table */
    Boolean 	  isDot;    	/* TRUE if the directory being searched is . */

    isDot = (*p->name == '.' && p->name[1] == '\0');

    for (entry = FUNC0(&p->files, &search);
	 entry != NULL;
	 entry = FUNC1(&search))
    {
	/*
	 * See if the file matches the given pattern. Note we follow the UNIX
	 * convention that dot files will only be found if the pattern
	 * begins with a dot (note also that as a side effect of the hashing
	 * scheme, .* won't match . or .. since they aren't hashed).
	 */
	if (FUNC3(entry->name, pattern) &&
	    ((entry->name[0] != '.') ||
	     (pattern[0] == '.')))
	{
	    (void)FUNC2(expansions,
			    (isDot ? FUNC4(entry->name) :
			     FUNC5(p->name, entry->name,
					STR_ADDSLASH)));
	}
    }
    return (0);
}