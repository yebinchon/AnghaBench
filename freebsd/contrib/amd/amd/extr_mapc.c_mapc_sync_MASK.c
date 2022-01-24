#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ alloc; TYPE_2__* cfm; int /*<<< orphan*/  map_name; int /*<<< orphan*/  (* isup ) (TYPE_3__*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_3__ mnt_map ;
struct TYPE_11__ {int /*<<< orphan*/  na_mtime; } ;
struct TYPE_14__ {TYPE_1__ am_fattr; } ;
typedef  TYPE_4__ am_node ;
struct TYPE_12__ {int /*<<< orphan*/  cfm_dir; } ;

/* Variables and functions */
 scalar_t__ MAPC_ALL ; 
 scalar_t__ MAPC_ROOT ; 
 int /*<<< orphan*/  XLOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(mnt_map *m)
{
  int need_mtime_update = 0;

  if (m->alloc == MAPC_ROOT)
    return;			/* nothing to do */

  /* do not clear map if map service is down */
  if (m->isup) {
    if (!((*m->isup)(m, m->map_name))) {
      FUNC5(XLOG_ERROR, "mapc_sync: map %s is down: not clearing map", m->map_name);
      return;
    }
  }

  if (m->alloc >= MAPC_ALL) {
    /* mapc_reload_map() always works */
    need_mtime_update = FUNC4(m);
  } else {
    FUNC2(m);
    /*
     * Attempt to find the wildcard entry
     */
    FUNC3(m);
    need_mtime_update = 1;	/* because mapc_clear always works */
  }

  /*
   * To be safe, update the mtime of the mnt_map's own node, so that the
   * kernel will flush all of its cached entries.
   */
  if (need_mtime_update && m->cfm) {
    am_node *mp = FUNC1(m->cfm->cfm_dir);
    if (mp) {
      FUNC0(&mp->am_fattr.na_mtime);
    } else {
      FUNC5(XLOG_ERROR, "cannot find map %s to update its mtime",
	   m->cfm->cfm_dir);
    }
  }
}