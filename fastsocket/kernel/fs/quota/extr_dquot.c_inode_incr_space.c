
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int qsize_t ;


 int inode_add_bytes (struct inode*,int ) ;
 int inode_add_rsv_space (struct inode*,int ) ;

__attribute__((used)) static void inode_incr_space(struct inode *inode, qsize_t number,
    int reserve)
{
 if (reserve)
  inode_add_rsv_space(inode, number);
 else
  inode_add_bytes(inode, number);
}
