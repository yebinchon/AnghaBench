#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct df_ru_bb_info {int /*<<< orphan*/  gen; } ;
struct df_ref {scalar_t__ id; int /*<<< orphan*/  insn; int /*<<< orphan*/  reg; } ;
struct df_link {struct df_ref* ref; struct df_link* next; } ;
struct df {int dummy; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  TYPE_2__* ddg_ptr ;
typedef  TYPE_3__* ddg_node_ptr ;
struct TYPE_12__ {int cuid; } ;
struct TYPE_11__ {int num_nodes; TYPE_1__* nodes; int /*<<< orphan*/  bb; } ;
struct TYPE_10__ {int /*<<< orphan*/  insn; } ;

/* Variables and functions */
 struct df_link* FUNC0 (struct df_ref*) ; 
 int /*<<< orphan*/  FUNC1 (struct df_ref*) ; 
 int FUNC2 (struct df_ref*) ; 
 struct df_ru_bb_info* FUNC3 (struct df*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OUTPUT_DEP ; 
 int /*<<< orphan*/  REG_DEP ; 
 int /*<<< orphan*/  TRUE_DEP ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct df_ref* FUNC6 (struct df*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct df*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 TYPE_3__* FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10 (ddg_ptr g, struct df *df, struct df_ref *rd)
{
  int regno = FUNC2 (rd);
  struct df_ru_bb_info *bb_info = FUNC3 (df, g->bb);
  struct df_link *r_use;
  int use_before_def = false;
  rtx def_insn = FUNC1 (rd);
  ddg_node_ptr src_node = FUNC9 (g, def_insn);

  /* Create and inter-loop true dependence between RD and each of its uses
     that is upwards exposed in RD's block.  */
  for (r_use = FUNC0 (rd); r_use != NULL; r_use = r_use->next)
    {
      if (FUNC4 (bb_info->gen, r_use->ref->id))
	{
	  rtx use_insn = FUNC1 (r_use->ref);
	  ddg_node_ptr dest_node = FUNC9 (g, use_insn);

	  FUNC8 (src_node && dest_node);

	  /* Any such upwards exposed use appears before the rd def.  */
	  use_before_def = true;
	  FUNC5 (g, src_node, dest_node, TRUE_DEP,
				  REG_DEP, 1);
	}
    }

  /* Create an inter-loop output dependence between RD (which is the
     last def in its block, being downwards exposed) and the first def
     in its block.  Avoid creating a self output dependence.  Avoid creating
     an output dependence if there is a dependence path between the two defs
     starting with a true dependence followed by an anti dependence (i.e. if
     there is a use between the two defs.  */
  if (! use_before_def)
    {
      struct df_ref *def = FUNC6 (df, g->bb, regno);
      int i;
      ddg_node_ptr dest_node;

      if (!def || rd->id == def->id)
	return;

      /* Check if there are uses after RD.  */
      for (i = src_node->cuid + 1; i < g->num_nodes; i++)
	 if (FUNC7 (df, g->nodes[i].insn, rd->reg))
	   return;

      dest_node = FUNC9 (g, def->insn);
      FUNC5 (g, src_node, dest_node, OUTPUT_DEP, REG_DEP, 1);
    }
}