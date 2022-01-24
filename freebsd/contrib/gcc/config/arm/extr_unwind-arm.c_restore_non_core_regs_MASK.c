#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int demand_save_flags; int /*<<< orphan*/  vfp; } ;
typedef  TYPE_1__ phase1_vrs ;

/* Variables and functions */
 int DEMAND_SAVE_VFP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1 (phase1_vrs * vrs)
{
  if ((vrs->demand_save_flags & DEMAND_SAVE_VFP) == 0)
    FUNC0 (&vrs->vfp);
}