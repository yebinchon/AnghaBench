
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_sc_info {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int __le64 ;


 int WARN_ON (int) ;
 int buffer_dirty (struct buffer_head*) ;
 int nilfs_segctor_add_file_block (struct nilfs_sc_info*,struct buffer_head*,struct inode*,int) ;

__attribute__((used)) static int nilfs_collect_file_bmap(struct nilfs_sc_info *sci,
       struct buffer_head *bh,
       struct inode *inode)
{
 WARN_ON(!buffer_dirty(bh));
 return nilfs_segctor_add_file_block(sci, bh, inode, sizeof(__le64));
}
