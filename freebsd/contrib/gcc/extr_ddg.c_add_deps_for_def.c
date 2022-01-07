
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct df_ru_bb_info {int gen; } ;
struct df_ref {scalar_t__ id; int insn; int reg; } ;
struct df_link {struct df_ref* ref; struct df_link* next; } ;
struct df {int dummy; } ;
typedef int rtx ;
typedef TYPE_2__* ddg_ptr ;
typedef TYPE_3__* ddg_node_ptr ;
struct TYPE_12__ {int cuid; } ;
struct TYPE_11__ {int num_nodes; TYPE_1__* nodes; int bb; } ;
struct TYPE_10__ {int insn; } ;


 struct df_link* DF_REF_CHAIN (struct df_ref*) ;
 int DF_REF_INSN (struct df_ref*) ;
 int DF_REF_REGNO (struct df_ref*) ;
 struct df_ru_bb_info* DF_RU_BB_INFO (struct df*,int ) ;
 int OUTPUT_DEP ;
 int REG_DEP ;
 int TRUE_DEP ;
 scalar_t__ bitmap_bit_p (int ,scalar_t__) ;
 int create_ddg_dep_no_link (TYPE_2__*,TYPE_3__*,TYPE_3__*,int ,int ,int) ;
 struct df_ref* df_bb_regno_first_def_find (struct df*,int ,int) ;
 scalar_t__ df_find_use (struct df*,int ,int ) ;
 int gcc_assert (int) ;
 TYPE_3__* get_node_of_insn (TYPE_2__*,int ) ;

__attribute__((used)) static void
add_deps_for_def (ddg_ptr g, struct df *df, struct df_ref *rd)
{
  int regno = DF_REF_REGNO (rd);
  struct df_ru_bb_info *bb_info = DF_RU_BB_INFO (df, g->bb);
  struct df_link *r_use;
  int use_before_def = 0;
  rtx def_insn = DF_REF_INSN (rd);
  ddg_node_ptr src_node = get_node_of_insn (g, def_insn);



  for (r_use = DF_REF_CHAIN (rd); r_use != ((void*)0); r_use = r_use->next)
    {
      if (bitmap_bit_p (bb_info->gen, r_use->ref->id))
 {
   rtx use_insn = DF_REF_INSN (r_use->ref);
   ddg_node_ptr dest_node = get_node_of_insn (g, use_insn);

   gcc_assert (src_node && dest_node);


   use_before_def = 1;
   create_ddg_dep_no_link (g, src_node, dest_node, TRUE_DEP,
      REG_DEP, 1);
 }
    }







  if (! use_before_def)
    {
      struct df_ref *def = df_bb_regno_first_def_find (df, g->bb, regno);
      int i;
      ddg_node_ptr dest_node;

      if (!def || rd->id == def->id)
 return;


      for (i = src_node->cuid + 1; i < g->num_nodes; i++)
  if (df_find_use (df, g->nodes[i].insn, rd->reg))
    return;

      dest_node = get_node_of_insn (g, def->insn);
      create_ddg_dep_no_link (g, src_node, dest_node, OUTPUT_DEP, REG_DEP, 1);
    }
}
