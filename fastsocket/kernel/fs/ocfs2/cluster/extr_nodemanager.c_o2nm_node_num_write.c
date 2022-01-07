
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2nm_node {unsigned long nd_num; int nd_set_attributes; } ;
struct o2nm_cluster {int cl_nodes_lock; int cl_nodes_bitmap; struct o2nm_node** cl_nodes; } ;
typedef size_t ssize_t ;


 size_t EEXIST ;
 size_t EINVAL ;
 size_t ERANGE ;
 unsigned long O2NM_MAX_NODES ;
 int O2NM_NODE_ATTR_ADDRESS ;
 int O2NM_NODE_ATTR_PORT ;
 int set_bit (unsigned long,int ) ;
 unsigned long simple_strtoul (char*,char**,int ) ;
 int test_bit (int ,int *) ;
 struct o2nm_cluster* to_o2nm_cluster_from_node (struct o2nm_node*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static ssize_t o2nm_node_num_write(struct o2nm_node *node, const char *page,
       size_t count)
{
 struct o2nm_cluster *cluster = to_o2nm_cluster_from_node(node);
 unsigned long tmp;
 char *p = (char *)page;

 tmp = simple_strtoul(p, &p, 0);
 if (!p || (*p && (*p != '\n')))
  return -EINVAL;

 if (tmp >= O2NM_MAX_NODES)
  return -ERANGE;





 if (!test_bit(O2NM_NODE_ATTR_ADDRESS, &node->nd_set_attributes) ||
     !test_bit(O2NM_NODE_ATTR_PORT, &node->nd_set_attributes))
  return -EINVAL;

 write_lock(&cluster->cl_nodes_lock);
 if (cluster->cl_nodes[tmp])
  p = ((void*)0);
 else {
  cluster->cl_nodes[tmp] = node;
  node->nd_num = tmp;
  set_bit(tmp, cluster->cl_nodes_bitmap);
 }
 write_unlock(&cluster->cl_nodes_lock);
 if (p == ((void*)0))
  return -EEXIST;

 return count;
}
