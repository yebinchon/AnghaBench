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
typedef  int /*<<< orphan*/  u64 ;
struct ocfs2_meta_lvb {int /*<<< orphan*/  lvb_iattr; int /*<<< orphan*/  lvb_imtime_packed; int /*<<< orphan*/  lvb_ictime_packed; int /*<<< orphan*/  lvb_iatime_packed; int /*<<< orphan*/  lvb_inlink; int /*<<< orphan*/  lvb_imode; int /*<<< orphan*/  lvb_igid; int /*<<< orphan*/  lvb_iuid; int /*<<< orphan*/  lvb_isize; int /*<<< orphan*/  lvb_igeneration; int /*<<< orphan*/  lvb_iclusters; int /*<<< orphan*/  lvb_version; } ;
struct ocfs2_lock_res {int /*<<< orphan*/  l_name; int /*<<< orphan*/  l_lksb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned long long,...) ; 
 struct ocfs2_meta_lvb* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(u64 level,
				     const char *function,
				     unsigned int line,
				     struct ocfs2_lock_res *lockres)
{
	struct ocfs2_meta_lvb *lvb = FUNC4(&lockres->l_lksb);

	FUNC3(level, "LVB information for %s (called from %s:%u):\n",
	     lockres->l_name, function, line);
	FUNC3(level, "version: %u, clusters: %u, generation: 0x%x\n",
	     lvb->lvb_version, FUNC1(lvb->lvb_iclusters),
	     FUNC1(lvb->lvb_igeneration));
	FUNC3(level, "size: %llu, uid %u, gid %u, mode 0x%x\n",
	     (unsigned long long)FUNC2(lvb->lvb_isize),
	     FUNC1(lvb->lvb_iuid), FUNC1(lvb->lvb_igid),
	     FUNC0(lvb->lvb_imode));
	FUNC3(level, "nlink %u, atime_packed 0x%llx, ctime_packed 0x%llx, "
	     "mtime_packed 0x%llx iattr 0x%x\n", FUNC0(lvb->lvb_inlink),
	     (long long)FUNC2(lvb->lvb_iatime_packed),
	     (long long)FUNC2(lvb->lvb_ictime_packed),
	     (long long)FUNC2(lvb->lvb_imtime_packed),
	     FUNC1(lvb->lvb_iattr));
}