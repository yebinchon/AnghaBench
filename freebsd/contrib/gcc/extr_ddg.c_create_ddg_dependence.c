
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int rtx ;
typedef scalar_t__ dep_type ;
typedef scalar_t__ dep_data_type ;
typedef int ddg_ptr ;
typedef TYPE_1__* ddg_node_ptr ;
typedef int ddg_edge_ptr ;
struct TYPE_6__ {scalar_t__ cuid; int insn; } ;


 scalar_t__ ANTI_DEP ;
 scalar_t__ MEM_DEP ;
 scalar_t__ OUTPUT_DEP ;
 scalar_t__ REG_DEP ;
 scalar_t__ REG_DEP_ANTI ;
 scalar_t__ REG_DEP_OUTPUT ;
 scalar_t__ REG_NOTE_KIND (int ) ;
 scalar_t__ TRUE_DEP ;
 int add_backarc_to_ddg (int ,int ) ;
 int add_edge_to_ddg (int ,int ) ;
 int create_ddg_edge (TYPE_1__*,TYPE_1__*,scalar_t__,scalar_t__,int,int) ;
 int free (int ) ;
 int gcc_assert (int ) ;
 int insn_cost (int ,int ,int ) ;
 scalar_t__ mem_access_insn_p (int ) ;

__attribute__((used)) static void
create_ddg_dependence (ddg_ptr g, ddg_node_ptr src_node,
         ddg_node_ptr dest_node, rtx link)
{
  ddg_edge_ptr e;
  int latency, distance = 0;
  int interloop = (src_node->cuid >= dest_node->cuid);
  dep_type t = TRUE_DEP;
  dep_data_type dt = (mem_access_insn_p (src_node->insn)
        && mem_access_insn_p (dest_node->insn) ? MEM_DEP
            : REG_DEP);



  if (interloop)
     distance = 1;

  gcc_assert (link);


  if (REG_NOTE_KIND (link) == REG_DEP_ANTI)
    t = ANTI_DEP;
  else if (REG_NOTE_KIND (link) == REG_DEP_OUTPUT)
    t = OUTPUT_DEP;
  latency = insn_cost (src_node->insn, link, dest_node->insn);

  e = create_ddg_edge (src_node, dest_node, t, dt, latency, distance);

  if (interloop)
    {





      if (!(t == OUTPUT_DEP && src_node == dest_node)
   && !(t == ANTI_DEP && dt == REG_DEP))
 add_backarc_to_ddg (g, e);
      else
 free (e);
    }
  else if (t == ANTI_DEP && dt == REG_DEP)
    free (e);
  else
    add_edge_to_ddg (g, e);
}
