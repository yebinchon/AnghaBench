
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int node_map_lock; } ;
struct ocfs2_node_map {int num_nodes; } ;


 int BUG_ON (int) ;
 int __ocfs2_node_map_clear_bit (struct ocfs2_node_map*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void ocfs2_node_map_clear_bit(struct ocfs2_super *osb,
         struct ocfs2_node_map *map,
         int bit)
{
 if (bit==-1)
  return;
 BUG_ON(bit >= map->num_nodes);
 spin_lock(&osb->node_map_lock);
 __ocfs2_node_map_clear_bit(map, bit);
 spin_unlock(&osb->node_map_lock);
}
