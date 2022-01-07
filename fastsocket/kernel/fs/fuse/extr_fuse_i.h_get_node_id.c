
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct inode {int dummy; } ;
struct TYPE_2__ {int nodeid; } ;


 TYPE_1__* get_fuse_inode (struct inode*) ;

__attribute__((used)) static inline u64 get_node_id(struct inode *inode)
{
 return get_fuse_inode(inode)->nodeid;
}
