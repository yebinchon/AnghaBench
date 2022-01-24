#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_2__* mf_ops; int /*<<< orphan*/  mf_error; } ;
typedef  TYPE_3__ mntfs ;
typedef  int /*<<< orphan*/  am_opts ;
struct TYPE_15__ {TYPE_1__* am_al; } ;
struct TYPE_13__ {int /*<<< orphan*/  (* mount_fs ) (TYPE_4__*,TYPE_3__*) ;int /*<<< orphan*/  (* fs_init ) (TYPE_3__*) ;} ;
struct TYPE_12__ {TYPE_3__* al_mnt; } ;

/* Variables and functions */
 char* ROOT_MAP ; 
 int /*<<< orphan*/  amfs_root_ops ; 
 TYPE_4__* FUNC0 () ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*) ; 
 TYPE_4__* root_node ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,TYPE_3__*) ; 

void
FUNC6(void)
{
  mntfs *root_mf;
  char *rootmap = ROOT_MAP;
  root_node = FUNC0();

  /*
   * Allocate a new map
   */
  FUNC3(root_node, "");

  /*
   * Allocate a new mounted filesystem
   */
  root_mf = FUNC1(&amfs_root_ops, (am_opts *) NULL, "", rootmap, "", "", "");

  /*
   * Replace the initial null reference
   */
  FUNC2(root_node->am_al->al_mnt);
  root_node->am_al->al_mnt = root_mf;

  /*
   * Initialize the root
   */
  if (root_mf->mf_ops->fs_init)
    (*root_mf->mf_ops->fs_init) (root_mf);

  /*
   * Mount the root
   */
  root_mf->mf_error = root_mf->mf_ops->mount_fs(root_node, root_mf);
}