
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int rtx ;
typedef scalar_t__ dep_type ;
typedef int dep_data_type ;
typedef int ddg_ptr ;
typedef TYPE_1__* ddg_node_ptr ;
typedef int ddg_edge_ptr ;
struct TYPE_6__ {int insn; } ;


 scalar_t__ ANTI_DEP ;
 int NULL_RTX ;
 scalar_t__ OUTPUT_DEP ;
 int PUT_REG_NOTE_KIND (int ,int ) ;
 int REG_DEP_ANTI ;
 int REG_DEP_OUTPUT ;
 int add_backarc_to_ddg (int ,int ) ;
 int add_edge_to_ddg (int ,int ) ;
 int alloc_INSN_LIST (int ,int ) ;
 int create_ddg_edge (TYPE_1__*,TYPE_1__*,scalar_t__,int ,int,int) ;
 int free_INSN_LIST_node (int ) ;
 int insn_cost (int ,int ,int ) ;

__attribute__((used)) static void
create_ddg_dep_no_link (ddg_ptr g, ddg_node_ptr from, ddg_node_ptr to,
   dep_type d_t, dep_data_type d_dt, int distance)
{
  ddg_edge_ptr e;
  int l;
  rtx link = alloc_INSN_LIST (to->insn, NULL_RTX);

  if (d_t == ANTI_DEP)
    PUT_REG_NOTE_KIND (link, REG_DEP_ANTI);
  else if (d_t == OUTPUT_DEP)
    PUT_REG_NOTE_KIND (link, REG_DEP_OUTPUT);

  l = insn_cost (from->insn, link, to->insn);
  free_INSN_LIST_node (link);

  e = create_ddg_edge (from, to, d_t, d_dt, l, distance);
  if (distance > 0)
    add_backarc_to_ddg (g, e);
  else
    add_edge_to_ddg (g, e);
}
