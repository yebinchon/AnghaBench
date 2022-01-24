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
typedef  int /*<<< orphan*/  am_node ;
struct TYPE_4__ {int /*<<< orphan*/  v3; int /*<<< orphan*/  v2; } ;
typedef  TYPE_1__ am_nfs_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  XLOG_ERROR ; 
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ nfs_dispatcher ; 
 scalar_t__ nfs_program_2 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 

am_nfs_handle_t *
FUNC4(char *dir, am_nfs_handle_t *nfh)
{
  am_node *mp = FUNC0(dir);
  if (mp) {
    if (nfs_dispatcher == nfs_program_2)
      FUNC1(mp, &nfh->v2);
    else
      FUNC2(mp, &nfh->v3);
    return nfh;
  }

  /*
   * Should never get here...
   */
  FUNC3(XLOG_ERROR, "Can't find root filehandle for %s", dir);

  return 0;
}