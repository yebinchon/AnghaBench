
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct depth_first_search_dsS {int dummy; } ;
typedef int basic_block ;


 int EDGE_FAKE ;
 int EXIT_BLOCK_PTR ;
 int flow_dfs_compute_reverse_add_bb (struct depth_first_search_dsS*,int ) ;
 int flow_dfs_compute_reverse_execute (struct depth_first_search_dsS*,int ) ;
 int flow_dfs_compute_reverse_finish (struct depth_first_search_dsS*) ;
 int flow_dfs_compute_reverse_init (struct depth_first_search_dsS*) ;
 int make_edge (int ,int ,int ) ;

void
connect_infinite_loops_to_exit (void)
{
  basic_block unvisited_block = EXIT_BLOCK_PTR;
  struct depth_first_search_dsS dfs_ds;



  flow_dfs_compute_reverse_init (&dfs_ds);
  flow_dfs_compute_reverse_add_bb (&dfs_ds, EXIT_BLOCK_PTR);


  while (1)
    {
      unvisited_block = flow_dfs_compute_reverse_execute (&dfs_ds,
         unvisited_block);
      if (!unvisited_block)
 break;

      make_edge (unvisited_block, EXIT_BLOCK_PTR, EDGE_FAKE);
      flow_dfs_compute_reverse_add_bb (&dfs_ds, unvisited_block);
    }

  flow_dfs_compute_reverse_finish (&dfs_ds);
  return;
}
