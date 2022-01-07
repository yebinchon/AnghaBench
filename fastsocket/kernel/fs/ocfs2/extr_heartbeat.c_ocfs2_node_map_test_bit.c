
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int node_map_lock; } ;
struct ocfs2_node_map {int num_nodes; int map; } ;


 int BUG () ;
 int ML_ERROR ;
 int mlog (int ,char*,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int,int ) ;

int ocfs2_node_map_test_bit(struct ocfs2_super *osb,
       struct ocfs2_node_map *map,
       int bit)
{
 int ret;
 if (bit >= map->num_nodes) {
  mlog(ML_ERROR, "bit=%d map->num_nodes=%d\n", bit, map->num_nodes);
  BUG();
 }
 spin_lock(&osb->node_map_lock);
 ret = test_bit(bit, map->map);
 spin_unlock(&osb->node_map_lock);
 return ret;
}
