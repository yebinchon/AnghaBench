
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_inode {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {unsigned int b_data; } ;


 int nilfs_write_inode_common (struct inode*,struct nilfs_inode*,int) ;

__attribute__((used)) static inline void
nilfs_mdt_write_inode_direct(struct inode *inode, struct buffer_head *bh,
        unsigned n)
{
 nilfs_write_inode_common(
  inode, (struct nilfs_inode *)(bh->b_data + n), 1);
}
