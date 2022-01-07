
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct deps {int dummy; } ;
typedef scalar_t__ rtx ;
typedef TYPE_1__* ddg_ptr ;
typedef TYPE_2__* ddg_node_ptr ;
struct TYPE_13__ {int successors; int insn; } ;
struct TYPE_12__ {int num_nodes; TYPE_2__* nodes; int bb; } ;


 int INSN_DEPEND (int ) ;
 int INSN_P (int ) ;
 scalar_t__ LOG_LINKS (int ) ;
 int TEST_BIT (int ,int) ;
 scalar_t__ XEXP (scalar_t__,int) ;
 int add_forw_dep (int ,scalar_t__) ;
 int add_inter_loop_mem_dep (TYPE_1__*,TYPE_2__*,TYPE_2__*) ;
 int create_ddg_dependence (TYPE_1__*,TYPE_2__*,TYPE_2__*,int ) ;
 int finish_deps_global () ;
 int free_deps (struct deps*) ;
 int get_ebb_head_tail (int ,int ,scalar_t__*,scalar_t__*) ;
 TYPE_2__* get_node_of_insn (TYPE_1__*,scalar_t__) ;
 int init_deps (struct deps*) ;
 int init_deps_global () ;
 scalar_t__ mem_access_insn_p (int ) ;
 int sched_analyze (struct deps*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
build_intra_loop_deps (ddg_ptr g)
{
  int i;

  struct deps tmp_deps;
  rtx head, tail, link;


  init_deps_global ();
  init_deps (&tmp_deps);


  get_ebb_head_tail (g->bb, g->bb, &head, &tail);
  sched_analyze (&tmp_deps, head, tail);



  for (i = 0; i < g->num_nodes; i++)
    {
      ddg_node_ptr dest_node = &g->nodes[i];

      if (! INSN_P (dest_node->insn))
 continue;

      for (link = LOG_LINKS (dest_node->insn); link; link = XEXP (link, 1))
 {
   ddg_node_ptr src_node = get_node_of_insn (g, XEXP (link, 0));

   if (!src_node)
     continue;

         add_forw_dep (dest_node->insn, link);
   create_ddg_dependence (g, src_node, dest_node,
     INSN_DEPEND (src_node->insn));
 }



      if (mem_access_insn_p (dest_node->insn))
 {
   int j;

   for (j = 0; j <= i; j++)
     {
       ddg_node_ptr j_node = &g->nodes[j];
       if (mem_access_insn_p (j_node->insn))


          if (! TEST_BIT (dest_node->successors, j))
      add_inter_loop_mem_dep (g, dest_node, j_node);
            }
        }
    }


  finish_deps_global ();
  free_deps (&tmp_deps);
}
