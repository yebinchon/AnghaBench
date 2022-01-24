#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  context; } ;
struct TYPE_7__ {char* name; } ;
typedef  int /*<<< orphan*/  Hash_Search ;
typedef  TYPE_1__ Hash_Entry ;
typedef  TYPE_2__ GNode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 TYPE_2__* FUNC5 () ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC6(void)
{
    GNode *cache = FUNC5();
    Hash_Entry *he, *nhe;
    Hash_Search hs;

    he = FUNC2(&cache->context, &hs);
    while (he) {
	nhe = FUNC3(&hs);
	if (he->name[0] != '/') {
	    if (FUNC0(DIR))
		FUNC4(stderr, "cached_realpath: purging %s\n", he->name);
	    FUNC1(&cache->context, he);
	}
	he = nhe;
    }
}