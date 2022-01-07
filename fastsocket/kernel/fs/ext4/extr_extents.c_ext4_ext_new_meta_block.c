
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ext4_extent {int ee_block; } ;
struct ext4_ext_path {int dummy; } ;
typedef int handle_t ;
typedef int ext4_fsblk_t ;


 int ext4_ext_find_goal (struct inode*,struct ext4_ext_path*,int ) ;
 int ext4_new_meta_blocks (int *,struct inode*,int ,unsigned int,int *,int*) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static ext4_fsblk_t
ext4_ext_new_meta_block(handle_t *handle, struct inode *inode,
   struct ext4_ext_path *path,
   struct ext4_extent *ex, int *err, unsigned int flags)
{
 ext4_fsblk_t goal, newblock;

 goal = ext4_ext_find_goal(inode, path, le32_to_cpu(ex->ee_block));
 newblock = ext4_new_meta_blocks(handle, inode, goal, flags,
     ((void*)0), err);
 return newblock;
}
