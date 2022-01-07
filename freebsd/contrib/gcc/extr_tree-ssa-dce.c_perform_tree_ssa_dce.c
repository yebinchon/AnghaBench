
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edge_list {int dummy; } ;


 int CDI_DOMINATORS ;
 int CDI_POST_DOMINATORS ;
 int TV_CONTROL_DEPENDENCES ;
 int calculate_dominance_info (int ) ;
 scalar_t__ cfg_altered ;
 struct edge_list* create_edge_list () ;
 scalar_t__ dump_file ;
 int eliminate_unnecessary_stmts () ;
 int find_all_control_dependences (struct edge_list*) ;
 int find_obviously_necessary_stmts (struct edge_list*) ;
 int free_dominance_info (int ) ;
 int free_edge_list (struct edge_list*) ;
 int last_basic_block ;
 int mark_dfs_back_edges () ;
 int mark_really_necessary_kill_operand_phis () ;
 int print_stats () ;
 int propagate_necessity (struct edge_list*) ;
 int sbitmap_alloc (int ) ;
 int sbitmap_zero (int ) ;
 int timevar_pop (int ) ;
 int timevar_push (int ) ;
 int tree_dce_done (int) ;
 int tree_dce_init (int) ;
 int visited_control_parents ;

__attribute__((used)) static void
perform_tree_ssa_dce (bool aggressive)
{
  struct edge_list *el = ((void*)0);

  tree_dce_init (aggressive);

  if (aggressive)
    {

      timevar_push (TV_CONTROL_DEPENDENCES);
      calculate_dominance_info (CDI_POST_DOMINATORS);
      el = create_edge_list ();
      find_all_control_dependences (el);
      timevar_pop (TV_CONTROL_DEPENDENCES);

      visited_control_parents = sbitmap_alloc (last_basic_block);
      sbitmap_zero (visited_control_parents);

      mark_dfs_back_edges ();
    }

  find_obviously_necessary_stmts (el);

  propagate_necessity (el);

  mark_really_necessary_kill_operand_phis ();
  eliminate_unnecessary_stmts ();

  if (aggressive)
    free_dominance_info (CDI_POST_DOMINATORS);




  if (cfg_altered)
    free_dominance_info (CDI_DOMINATORS);


  if (dump_file)
    print_stats ();

  tree_dce_done (aggressive);

  free_edge_list (el);
}
