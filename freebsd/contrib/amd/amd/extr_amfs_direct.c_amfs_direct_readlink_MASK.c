#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ am_path; TYPE_1__* am_al; int /*<<< orphan*/  am_child; } ;
typedef  TYPE_2__ am_node ;
struct TYPE_14__ {int /*<<< orphan*/  mf_private; } ;
struct TYPE_12__ {TYPE_5__* al_mnt; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ Finishing ; 
 int /*<<< orphan*/  VLOOK_CREATE ; 
 scalar_t__ amd_state ; 
 TYPE_2__* FUNC0 (TYPE_2__*,scalar_t__,int*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static am_node *
FUNC5(am_node *mp, int *error_return)
{
  am_node *xp;
  int rc = 0;

  xp = FUNC4(mp->am_child);
  if (!xp) {
    if (!mp->am_al->al_mnt->mf_private)
      FUNC2(mp->am_al->al_mnt);
    xp = FUNC0(mp, mp->am_path + 1, &rc, VLOOK_CREATE);
    if (xp && rc < 0)
      xp = FUNC1(xp, &rc);
  }
  if (xp) {
    FUNC3(xp);		/* (7/12/89) from Rein Tollevik */
    return xp;
  }
  if (amd_state == Finishing)
    rc = ENOENT;
  *error_return = rc;
  return 0;
}