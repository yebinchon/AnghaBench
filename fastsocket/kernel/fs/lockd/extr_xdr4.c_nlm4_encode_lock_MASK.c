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
struct file_lock {scalar_t__ fl_start; scalar_t__ fl_end; } ;
struct nlm_lock {int /*<<< orphan*/  svid; int /*<<< orphan*/  oh; int /*<<< orphan*/  fh; int /*<<< orphan*/  caller; struct file_lock fl; } ;
typedef  scalar_t__ __s64 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ NLM4_OFFSET_MAX ; 
 scalar_t__ OFFSET_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __be32 *
FUNC6(__be32 *p, struct nlm_lock *lock)
{
	struct file_lock	*fl = &lock->fl;
	__s64			start, len;

	if (!(p = FUNC5(p, lock->caller))
	 || !(p = FUNC2(p, &lock->fh))
	 || !(p = FUNC3(p, &lock->oh)))
		return NULL;

	if (fl->fl_start > NLM4_OFFSET_MAX
	 || (fl->fl_end > NLM4_OFFSET_MAX && fl->fl_end != OFFSET_MAX))
		return NULL;

	*p++ = FUNC0(lock->svid);

	start = FUNC1(fl->fl_start);
	if (fl->fl_end == OFFSET_MAX)
		len = 0;
	else
		len = FUNC1(fl->fl_end - fl->fl_start + 1);

	p = FUNC4(p, start);
	p = FUNC4(p, len);

	return p;
}