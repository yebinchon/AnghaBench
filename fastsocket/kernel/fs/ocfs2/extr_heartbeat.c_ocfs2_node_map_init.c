
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_node_map {int map; int num_nodes; } ;


 int BITS_TO_LONGS (int ) ;
 int OCFS2_NODE_MAP_MAX_NODES ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void ocfs2_node_map_init(struct ocfs2_node_map *map)
{
 map->num_nodes = OCFS2_NODE_MAP_MAX_NODES;
 memset(map->map, 0, BITS_TO_LONGS(OCFS2_NODE_MAP_MAX_NODES) *
        sizeof(unsigned long));
}
