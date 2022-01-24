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
typedef  int /*<<< orphan*/  edge ;
typedef  int /*<<< orphan*/  basic_block ;
struct TYPE_2__ {int /*<<< orphan*/  (* extract_cond_bb_edges ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 TYPE_1__* cfg_hooks ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC2 (basic_block b, edge *e1, edge *e2)
{
  FUNC0 (cfg_hooks->extract_cond_bb_edges);
  cfg_hooks->extract_cond_bb_edges (b, e1, e2);
}