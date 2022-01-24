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
typedef  TYPE_1__* voidp ;
struct TYPE_6__ {int /*<<< orphan*/  mf_q; } ;
typedef  TYPE_1__ mntfs ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  mntfs_allocated ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC3(voidp v)
{
  mntfs *mf = v;

  FUNC1(&mf->mf_q);

  /*
   * Free memory
   */
  FUNC2(mf);
  FUNC0(mf);

  --mntfs_allocated;
}