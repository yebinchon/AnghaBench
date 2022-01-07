
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int ddg_ptr ;
typedef TYPE_1__* ddg_node_ptr ;
struct TYPE_6__ {scalar_t__ cuid; int insn; } ;


 int ANTI_DEP ;
 int MEM_DEP ;
 int OUTPUT_DEP ;
 int TRUE_DEP ;
 int create_ddg_dep_no_link (int ,TYPE_1__*,TYPE_1__*,int ,int ,int) ;
 scalar_t__ mem_read_insn_p (int ) ;
 scalar_t__ mem_write_insn_p (int ) ;

__attribute__((used)) static void
add_inter_loop_mem_dep (ddg_ptr g, ddg_node_ptr from, ddg_node_ptr to)
{
  if (mem_write_insn_p (from->insn))
    {
      if (mem_read_insn_p (to->insn))
   create_ddg_dep_no_link (g, from, to, TRUE_DEP, MEM_DEP, 1);
      else if (from->cuid != to->cuid)
   create_ddg_dep_no_link (g, from, to, OUTPUT_DEP, MEM_DEP, 1);
    }
  else
    {
      if (mem_read_insn_p (to->insn))
 return;
      else if (from->cuid != to->cuid)
 {
     create_ddg_dep_no_link (g, from, to, ANTI_DEP, MEM_DEP, 1);
     create_ddg_dep_no_link (g, to, from, TRUE_DEP, MEM_DEP, 1);
 }
    }

}
