
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct inode {int dummy; } ;


 scalar_t__ get_node_id (struct inode*) ;

int fuse_inode_eq(struct inode *inode, void *_nodeidp)
{
 u64 nodeid = *(u64 *) _nodeidp;
 if (get_node_id(inode) == nodeid)
  return 1;
 else
  return 0;
}
