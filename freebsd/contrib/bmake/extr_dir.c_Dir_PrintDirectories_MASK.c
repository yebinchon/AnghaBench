#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* name; int refCount; int hits; } ;
typedef  TYPE_1__ Path ;
typedef  int /*<<< orphan*/ * LstNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ SUCCESS ; 
 int bigmisses ; 
 int /*<<< orphan*/  debug_file ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int hits ; 
 int misses ; 
 int nearmisses ; 
 int /*<<< orphan*/  openDirectories ; 

void
FUNC5(void)
{
    LstNode	ln;
    Path	*p;

    FUNC4(debug_file, "#*** Directory Cache:\n");
    FUNC4(debug_file, "# Stats: %d hits %d misses %d near misses %d losers (%d%%)\n",
	      hits, misses, nearmisses, bigmisses,
	      (hits+bigmisses+nearmisses ?
	       hits * 100 / (hits + bigmisses + nearmisses) : 0));
    FUNC4(debug_file, "# %-20s referenced\thits\n", "directory");
    if (FUNC3(openDirectories) == SUCCESS) {
	while ((ln = FUNC2(openDirectories)) != NULL) {
	    p = (Path *)FUNC1(ln);
	    FUNC4(debug_file, "# %-20s %10d\t%4d\n", p->name, p->refCount, p->hits);
	}
	FUNC0(openDirectories);
    }
}