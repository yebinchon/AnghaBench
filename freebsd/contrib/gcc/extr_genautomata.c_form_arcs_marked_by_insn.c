
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int state_t ;
typedef TYPE_2__* decl_t ;
typedef TYPE_3__* arc_t ;
struct TYPE_16__ {int * arcs_marked_by_insn; } ;
struct TYPE_15__ {int decls_num; TYPE_2__** decls; } ;
struct TYPE_14__ {TYPE_1__* insn_reserv_decl; } ;
struct TYPE_13__ {TYPE_6__* insn; struct TYPE_13__* next_arc_marked_by_insn; } ;
struct TYPE_12__ {scalar_t__ mode; } ;
struct TYPE_11__ {TYPE_3__* arcs_marked_by_insn; } ;


 TYPE_9__* DECL_INSN_RESERV (TYPE_2__*) ;
 TYPE_8__* description ;
 scalar_t__ dm_insn_reserv ;
 TYPE_3__* first_out_arc (int ) ;
 int gcc_assert (TYPE_6__*) ;
 TYPE_3__* next_out_arc (TYPE_3__*) ;

__attribute__((used)) static void
form_arcs_marked_by_insn (state_t state)
{
  decl_t decl;
  arc_t arc;
  int i;

  for (i = 0; i < description->decls_num; i++)
    {
      decl = description->decls [i];
      if (decl->mode == dm_insn_reserv)
 DECL_INSN_RESERV (decl)->arcs_marked_by_insn = ((void*)0);
    }
  for (arc = first_out_arc (state); arc != ((void*)0); arc = next_out_arc (arc))
    {
      gcc_assert (arc->insn);
      arc->next_arc_marked_by_insn
 = arc->insn->insn_reserv_decl->arcs_marked_by_insn;
      arc->insn->insn_reserv_decl->arcs_marked_by_insn = arc;
    }
}
