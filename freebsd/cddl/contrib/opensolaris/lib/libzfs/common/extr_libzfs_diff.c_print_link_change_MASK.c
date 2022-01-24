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
struct TYPE_6__ {int /*<<< orphan*/  zs_mode; scalar_t__* zs_ctime; } ;
typedef  TYPE_1__ zfs_stat_t ;
typedef  int /*<<< orphan*/  longlong_t ;
struct TYPE_7__ {scalar_t__ classify; scalar_t__ timestamped; } ;
typedef  TYPE_2__ differ_info_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ZDIFF_MODIFIED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(FILE *fp, differ_info_t *di, int delta, const char *file,
    zfs_stat_t *isb)
{
	if (di->timestamped)
		(void) FUNC0(fp, "%10lld.%09lld\t",
		    (longlong_t)isb->zs_ctime[0],
		    (longlong_t)isb->zs_ctime[1]);
	(void) FUNC0(fp, "%c\t", ZDIFF_MODIFIED);
	if (di->classify) {
		FUNC2(fp, isb->zs_mode);
		(void) FUNC0(fp, "\t");
	}
	FUNC1(fp, di, file);
	(void) FUNC0(fp, "\t(%+d)", delta);
	(void) FUNC0(fp, "\n");
}