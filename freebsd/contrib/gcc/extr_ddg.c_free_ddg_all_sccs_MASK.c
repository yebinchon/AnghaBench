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
typedef  TYPE_1__* ddg_all_sccs_ptr ;
struct TYPE_4__ {int num_sccs; int /*<<< orphan*/ * sccs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2 (ddg_all_sccs_ptr all_sccs)
{
  int i;

  if (!all_sccs)
    return;

  for (i = 0; i < all_sccs->num_sccs; i++)
    FUNC1 (all_sccs->sccs[i]);

  FUNC0 (all_sccs);
}