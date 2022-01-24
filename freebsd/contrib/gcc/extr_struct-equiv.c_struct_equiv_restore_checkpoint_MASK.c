#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct struct_equiv_checkpoint {size_t local_count; scalar_t__ version; int /*<<< orphan*/  input_valid; int /*<<< orphan*/  input_count; int /*<<< orphan*/  y_start; int /*<<< orphan*/  x_start; int /*<<< orphan*/  ninsns; } ;
struct TYPE_2__ {size_t local_count; scalar_t__ version; int /*<<< orphan*/  input_valid; int /*<<< orphan*/  input_count; int /*<<< orphan*/  y_start; int /*<<< orphan*/  x_start; int /*<<< orphan*/  ninsns; } ;
struct equiv_info {int need_rerun; TYPE_1__ cur; int /*<<< orphan*/ * y_local; int /*<<< orphan*/  y_local_live; int /*<<< orphan*/ * x_local; int /*<<< orphan*/  x_local_live; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (struct struct_equiv_checkpoint *p,
				 struct equiv_info *info)
{
  info->cur.ninsns = p->ninsns;
  info->cur.x_start = p->x_start;
  info->cur.y_start = p->y_start;
  info->cur.input_count = p->input_count;
  info->cur.input_valid = p->input_valid;
  while (info->cur.local_count > p->local_count)
    {
      info->cur.local_count--;
      info->cur.version--;
      if (FUNC1 (info->x_local_live,
			   FUNC0 (info->x_local[info->cur.local_count])))
	{
	  FUNC2 (info->x_local_live,
			      info->x_local[info->cur.local_count], 0);
	  FUNC2 (info->y_local_live,
			      info->y_local[info->cur.local_count], 0);
	  info->cur.version--;
	}
    }
  if (info->cur.version != p->version)
    info->need_rerun = true;
}