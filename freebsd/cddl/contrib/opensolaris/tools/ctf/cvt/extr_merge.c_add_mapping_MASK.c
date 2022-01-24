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
typedef  scalar_t__ tid_t ;
typedef  int /*<<< orphan*/  alist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(alist_t *ta, tid_t srcid, tid_t tgtid)
{
	FUNC3(3, "Adding mapping %u <%x> => %u <%x>\n", srcid, srcid, tgtid, tgtid);

	FUNC2(!FUNC1(ta, (void *)(uintptr_t)srcid, NULL));
	FUNC2(srcid != 0 && tgtid != 0);

	FUNC0(ta, (void *)(uintptr_t)srcid, (void *)(uintptr_t)tgtid);
}