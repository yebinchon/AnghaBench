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
struct amfs_nfsx {int nx_c; struct amfs_nfsx* nx_v; int /*<<< orphan*/ * n_mnt; } ;
typedef  scalar_t__ opaque_t ;
typedef  int /*<<< orphan*/  mntfs ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amfs_nfsx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(opaque_t vp)
{
  struct amfs_nfsx *nx = (struct amfs_nfsx *) vp;
  int i;

  for (i = 0; i < nx->nx_c; i++) {
    mntfs *m = nx->nx_v[i].n_mnt;
    if (m)
      FUNC1(m);
  }

  FUNC0(nx->nx_v);
  FUNC0(nx);
}