#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int* am_fd; scalar_t__ am_autofs_fh; int /*<<< orphan*/ ** am_alarray; int /*<<< orphan*/ * am_al; int /*<<< orphan*/ ** am_transp; int /*<<< orphan*/ ** am_pref; int /*<<< orphan*/ ** am_path; int /*<<< orphan*/ ** am_name; int /*<<< orphan*/ ** am_link; } ;
typedef  TYPE_1__ am_node ;
typedef  int /*<<< orphan*/  am_loc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  XLOG_FATAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void
FUNC6(am_node *mp)
{
  FUNC5(mp);

  if (mp->am_fd[1] != -1)
    FUNC4(XLOG_FATAL, "free_map: called prior to notifying the child for %s.",
	mp->am_path);

  FUNC0(mp->am_link);
  FUNC0(mp->am_name);
  FUNC0(mp->am_path);
  FUNC0(mp->am_pref);
  FUNC0(mp->am_transp);

  if (mp->am_al)
    FUNC3(mp->am_al);

  if (mp->am_alarray) {
    am_loc **temp_al;
    for (temp_al = mp->am_alarray; *temp_al; temp_al++)
      FUNC3(*temp_al);
    FUNC0(mp->am_alarray);
  }

#ifdef HAVE_FS_AUTOFS
  if (mp->am_autofs_fh)
    autofs_release_fh(mp);
#endif /* HAVE_FS_AUTOFS */

  FUNC2(mp);
}