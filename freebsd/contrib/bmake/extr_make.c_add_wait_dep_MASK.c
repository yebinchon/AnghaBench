#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* name; char* cohort_num; int /*<<< orphan*/  parents; int /*<<< orphan*/  unmade; int /*<<< orphan*/  children; } ;
typedef  TYPE_1__ GNode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  MAKE ; 
 int /*<<< orphan*/  debug_file ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC5(void *v_cn, void *v_wn)
{
    GNode *cn = v_cn;
    GNode *wn = v_wn;

    if (cn == wn)
	return 1;

    if (cn == NULL || wn == NULL) {
	FUNC4("bad wait dep %p %p\n", cn, wn);
	FUNC2(4);
    }
    if (FUNC0(MAKE))
	 FUNC3(debug_file, ".WAIT: add dependency %s%s -> %s\n",
		cn->name, cn->cohort_num, wn->name);

    FUNC1(wn->children, cn);
    wn->unmade++;
    FUNC1(cn->parents, wn);
    return 0;
}