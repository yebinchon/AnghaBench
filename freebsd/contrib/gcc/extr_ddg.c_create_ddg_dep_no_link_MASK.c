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
typedef  int /*<<< orphan*/  rtx ;
typedef  scalar_t__ dep_type ;
typedef  int /*<<< orphan*/  dep_data_type ;
typedef  int /*<<< orphan*/  ddg_ptr ;
typedef  TYPE_1__* ddg_node_ptr ;
typedef  int /*<<< orphan*/  ddg_edge_ptr ;
struct TYPE_6__ {int /*<<< orphan*/  insn; } ;

/* Variables and functions */
 scalar_t__ ANTI_DEP ; 
 int /*<<< orphan*/  NULL_RTX ; 
 scalar_t__ OUTPUT_DEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_DEP_ANTI ; 
 int /*<<< orphan*/  REG_DEP_OUTPUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (ddg_ptr g, ddg_node_ptr from, ddg_node_ptr to,
			dep_type d_t, dep_data_type d_dt, int distance)
{
  ddg_edge_ptr e;
  int l;
  rtx link = FUNC3 (to->insn, NULL_RTX);

  if (d_t == ANTI_DEP)
    FUNC0 (link, REG_DEP_ANTI);
  else if (d_t == OUTPUT_DEP)
    FUNC0 (link, REG_DEP_OUTPUT);

  l = FUNC6 (from->insn, link, to->insn);
  FUNC5 (link);

  e = FUNC4 (from, to, d_t, d_dt, l, distance);
  if (distance > 0)
    FUNC1 (g, e);
  else
    FUNC2 (g, e);
}