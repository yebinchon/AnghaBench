
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_node {int dummy; } ;
struct o2nm_node {int nd_ipv4_address; int nd_ip_node; } ;
struct o2nm_cluster {int cl_nodes_lock; int cl_node_ip_tree; } ;
typedef int ssize_t ;
typedef int ipv4_addr ;
typedef int __be32 ;


 int ARRAY_SIZE (unsigned int*) ;
 int EEXIST ;
 int EINVAL ;
 int ERANGE ;
 int be32_add_cpu (int *,unsigned int) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ o2nm_node_ip_tree_lookup (struct o2nm_cluster*,int ,struct rb_node***,struct rb_node**) ;
 int rb_insert_color (int *,int *) ;
 int rb_link_node (int *,struct rb_node*,struct rb_node**) ;
 int sscanf (char const*,char*,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;
 struct o2nm_cluster* to_o2nm_cluster_from_node (struct o2nm_node*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static ssize_t o2nm_node_ipv4_address_write(struct o2nm_node *node,
         const char *page,
         size_t count)
{
 struct o2nm_cluster *cluster = to_o2nm_cluster_from_node(node);
 int ret, i;
 struct rb_node **p, *parent;
 unsigned int octets[4];
 __be32 ipv4_addr = 0;

 ret = sscanf(page, "%3u.%3u.%3u.%3u", &octets[3], &octets[2],
       &octets[1], &octets[0]);
 if (ret != 4)
  return -EINVAL;

 for (i = 0; i < ARRAY_SIZE(octets); i++) {
  if (octets[i] > 255)
   return -ERANGE;
  be32_add_cpu(&ipv4_addr, octets[i] << (i * 8));
 }

 ret = 0;
 write_lock(&cluster->cl_nodes_lock);
 if (o2nm_node_ip_tree_lookup(cluster, ipv4_addr, &p, &parent))
  ret = -EEXIST;
 else {
  rb_link_node(&node->nd_ip_node, parent, p);
  rb_insert_color(&node->nd_ip_node, &cluster->cl_node_ip_tree);
 }
 write_unlock(&cluster->cl_nodes_lock);
 if (ret)
  return ret;

 memcpy(&node->nd_ipv4_address, &ipv4_addr, sizeof(ipv4_addr));

 return count;
}
