
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dom_info {int fake_exit_edge; int dfs_to_bb; int dfs_order; int set_child; int set_size; int set_chain; int next_bucket; int bucket; int dom; int key; int path_min; int dfs_parent; } ;


 int BITMAP_FREE (int ) ;
 int free (int ) ;

__attribute__((used)) static void
free_dom_info (struct dom_info *di)
{
  free (di->dfs_parent);
  free (di->path_min);
  free (di->key);
  free (di->dom);
  free (di->bucket);
  free (di->next_bucket);
  free (di->set_chain);
  free (di->set_size);
  free (di->set_child);
  free (di->dfs_order);
  free (di->dfs_to_bb);
  BITMAP_FREE (di->fake_exit_edge);
}
