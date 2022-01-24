#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ mf_private; } ;
typedef  TYPE_2__ mntfs ;
typedef  int /*<<< orphan*/  mnt_map ;
struct TYPE_11__ {TYPE_1__* am_al; } ;
typedef  TYPE_3__ am_node ;
struct TYPE_9__ {TYPE_2__* al_mnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  create_amfs_union_node ; 
 TYPE_3__* FUNC1 (int*) ; 
 TYPE_3__* FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static void
FUNC4(mntfs *mf)
{
  int index;
  am_node *mp;

  FUNC0(mf);

  /*
   * Having made the union mount point,
   * populate all the entries...
   */
  for (mp = FUNC1(&index);
       mp;
       mp = FUNC2(&index)) {
    if (mp->am_al->al_mnt == mf) {
      /* return value from create_amfs_union_node is ignored by mapc_keyiter */
      (void) FUNC3((mnt_map *) mp->am_al->al_mnt->mf_private,
			  create_amfs_union_node,
			  mp);
      break;
    }
  }
}