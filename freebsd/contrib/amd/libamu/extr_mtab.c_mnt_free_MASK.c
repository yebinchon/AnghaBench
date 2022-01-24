#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* mnt_time; struct TYPE_4__* mnt_opts; struct TYPE_4__* mnt_type; struct TYPE_4__* mnt_dir; struct TYPE_4__* mnt_fsname; } ;
typedef  TYPE_1__ mntent_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void
FUNC1(mntent_t *mp)
{
  FUNC0(mp->mnt_fsname);
  FUNC0(mp->mnt_dir);
  FUNC0(mp->mnt_type);
  FUNC0(mp->mnt_opts);

#ifdef HAVE_MNTENT_T_MNT_TIME
# ifdef HAVE_MNTENT_T_MNT_TIME_STRING
  XFREE(mp->mnt_time);
# endif /* HAVE_MNTENT_T_MNT_TIME_STRING */
#endif /* HAVE_MNTENT_T_MNT_TIME */

  FUNC0(mp);
}