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
struct xfs_mount {int dummy; } ;
typedef  int /*<<< orphan*/  inst_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xfs_mount*,char*) ; 
 int xfs_error_level ; 
 int /*<<< orphan*/  FUNC1 (char const*,int,struct xfs_mount*,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 

void
FUNC3(
	const char		*tag,
	int			level,
	struct xfs_mount	*mp,
	void			*p,
	const char		*filename,
	int			linenum,
	inst_t			*ra)
{
	if (level <= xfs_error_level)
		FUNC2(p, 16);
	FUNC1(tag, level, mp, filename, linenum, ra);
	FUNC0(mp, "Corruption detected. Unmount and run xfs_repair");
}