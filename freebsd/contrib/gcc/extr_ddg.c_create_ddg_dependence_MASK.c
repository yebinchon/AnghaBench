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
typedef  scalar_t__ dep_data_type ;
typedef  int /*<<< orphan*/  ddg_ptr ;
typedef  TYPE_1__* ddg_node_ptr ;
typedef  int /*<<< orphan*/  ddg_edge_ptr ;
struct TYPE_6__ {scalar_t__ cuid; int /*<<< orphan*/  insn; } ;

/* Variables and functions */
 scalar_t__ ANTI_DEP ; 
 scalar_t__ MEM_DEP ; 
 scalar_t__ OUTPUT_DEP ; 
 scalar_t__ REG_DEP ; 
 scalar_t__ REG_DEP_ANTI ; 
 scalar_t__ REG_DEP_OUTPUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE_DEP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*,scalar_t__,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8 (ddg_ptr g, ddg_node_ptr src_node,
		       ddg_node_ptr dest_node, rtx link)
{
  ddg_edge_ptr e;
  int latency, distance = 0;
  int interloop = (src_node->cuid >= dest_node->cuid);
  dep_type t = TRUE_DEP;
  dep_data_type dt = (FUNC7 (src_node->insn)
		      && FUNC7 (dest_node->insn) ? MEM_DEP
							     : REG_DEP);

  /* For now we don't have an exact calculation of the distance,
     so assume 1 conservatively.  */
  if (interloop)
     distance = 1;

  FUNC5 (link);

  /* Note: REG_DEP_ANTI applies to MEM ANTI_DEP as well!!  */
  if (FUNC0 (link) == REG_DEP_ANTI)
    t = ANTI_DEP;
  else if (FUNC0 (link) == REG_DEP_OUTPUT)
    t = OUTPUT_DEP;
  latency = FUNC6 (src_node->insn, link, dest_node->insn);

  e = FUNC3 (src_node, dest_node, t, dt, latency, distance);

  if (interloop)
    {
      /* Some interloop dependencies are relaxed:
	 1. Every insn is output dependent on itself; ignore such deps.
	 2. Every true/flow dependence is an anti dependence in the
	 opposite direction with distance 1; such register deps
	 will be removed by renaming if broken --- ignore them.  */
      if (!(t == OUTPUT_DEP && src_node == dest_node)
	  && !(t == ANTI_DEP && dt == REG_DEP))
	FUNC1 (g, e);
      else
	FUNC4 (e);
    }
  else if (t == ANTI_DEP && dt == REG_DEP)
    FUNC4 (e);  /* We can fix broken anti register deps using reg-moves.  */
  else
    FUNC2 (g, e);
}