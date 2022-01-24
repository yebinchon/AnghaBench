#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  state_t ;
typedef  TYPE_2__* decl_t ;
typedef  TYPE_3__* arc_t ;
struct TYPE_16__ {int /*<<< orphan*/ * arcs_marked_by_insn; } ;
struct TYPE_15__ {int decls_num; TYPE_2__** decls; } ;
struct TYPE_14__ {TYPE_1__* insn_reserv_decl; } ;
struct TYPE_13__ {TYPE_6__* insn; struct TYPE_13__* next_arc_marked_by_insn; } ;
struct TYPE_12__ {scalar_t__ mode; } ;
struct TYPE_11__ {TYPE_3__* arcs_marked_by_insn; } ;

/* Variables and functions */
 TYPE_9__* FUNC0 (TYPE_2__*) ; 
 TYPE_8__* description ; 
 scalar_t__ dm_insn_reserv ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 TYPE_3__* FUNC3 (TYPE_3__*) ; 

__attribute__((used)) static void
FUNC4 (state_t state)
{
  decl_t decl;
  arc_t arc;
  int i;

  for (i = 0; i < description->decls_num; i++)
    {
      decl = description->decls [i];
      if (decl->mode == dm_insn_reserv)
	FUNC0 (decl)->arcs_marked_by_insn = NULL;
    }
  for (arc = FUNC1 (state); arc != NULL; arc = FUNC3 (arc))
    {
      FUNC2 (arc->insn);
      arc->next_arc_marked_by_insn
	= arc->insn->insn_reserv_decl->arcs_marked_by_insn;
      arc->insn->insn_reserv_decl->arcs_marked_by_insn = arc;
    }
}