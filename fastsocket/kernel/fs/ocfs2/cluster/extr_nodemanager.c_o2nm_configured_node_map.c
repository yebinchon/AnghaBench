
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2nm_cluster {int cl_nodes_lock; int cl_nodes_bitmap; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 int memcpy (unsigned long*,int ,int) ;
 struct o2nm_cluster* o2nm_single_cluster ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

int o2nm_configured_node_map(unsigned long *map, unsigned bytes)
{
 struct o2nm_cluster *cluster = o2nm_single_cluster;

 BUG_ON(bytes < (sizeof(cluster->cl_nodes_bitmap)));

 if (cluster == ((void*)0))
  return -EINVAL;

 read_lock(&cluster->cl_nodes_lock);
 memcpy(map, cluster->cl_nodes_bitmap, sizeof(cluster->cl_nodes_bitmap));
 read_unlock(&cluster->cl_nodes_lock);

 return 0;
}
