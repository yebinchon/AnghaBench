
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ext4_ext_path {int * p_ext; } ;
typedef int ext4_lblk_t ;


 int ENODATA ;
 scalar_t__ IS_ERR (struct ext4_ext_path*) ;
 int PTR_ERR (struct ext4_ext_path*) ;
 struct ext4_ext_path* ext4_ext_find_extent (struct inode*,int ,struct ext4_ext_path*) ;
 size_t ext_depth (struct inode*) ;

__attribute__((used)) static inline int
get_ext_path(struct inode *inode, ext4_lblk_t lblock,
  struct ext4_ext_path **path)
{
 int ret = 0;

 *path = ext4_ext_find_extent(inode, lblock, *path);
 if (IS_ERR(*path)) {
  ret = PTR_ERR(*path);
  *path = ((void*)0);
 } else if ((*path)[ext_depth(inode)].p_ext == ((void*)0))
  ret = -ENODATA;

 return ret;
}
