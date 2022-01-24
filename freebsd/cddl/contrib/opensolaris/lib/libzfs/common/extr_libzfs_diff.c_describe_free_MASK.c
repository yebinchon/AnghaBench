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
typedef  int /*<<< orphan*/  uint64_t ;
struct zfs_stat {int dummy; } ;
struct TYPE_5__ {scalar_t__ zerr; int /*<<< orphan*/  fromsnap; } ;
typedef  TYPE_1__ differ_info_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ESTALE ; 
 int /*<<< orphan*/  ZDIFF_REMOVED ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct zfs_stat*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,char*,struct zfs_stat*) ; 

__attribute__((used)) static int
FUNC2(FILE *fp, differ_info_t *di, uint64_t object, char *namebuf,
    int maxlen)
{
	struct zfs_stat sb;

	if (FUNC0(di, di->fromsnap, object, namebuf,
	    maxlen, &sb) != 0) {
		return (-1);
	}
	/* Don't print if in the delete queue on from side */
	if (di->zerr == ESTALE) {
		di->zerr = 0;
		return (0);
	}

	FUNC1(fp, di, ZDIFF_REMOVED, namebuf, &sb);
	return (0);
}