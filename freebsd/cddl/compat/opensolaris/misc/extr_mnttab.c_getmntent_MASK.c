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
struct statfs {int dummy; } ;
struct mnttab {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_CUR ; 
 int allfs ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * gsfs ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mnttab*) ; 
 int FUNC3 () ; 

int
FUNC4(FILE *fp, struct mnttab *mp)
{
	struct statfs *sfs;
	int error, nfs;

	nfs = (int)FUNC1(FUNC0(fp), 0, SEEK_CUR);
	if (nfs == -1)
		return (errno);
	/* If nfs is 0, we want to refresh out cache. */
	if (nfs == 0 || gsfs == NULL) {
		error = FUNC3();
		if (error != 0)
			return (error);
	}
	if (nfs >= allfs)
		return (-1);
	FUNC2(&gsfs[nfs], mp);
	if (FUNC1(FUNC0(fp), 1, SEEK_CUR) == -1)
		return (errno);
	return (0);
}