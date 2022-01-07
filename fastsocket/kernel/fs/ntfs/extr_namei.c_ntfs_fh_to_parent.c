
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct fid {int dummy; } ;
struct dentry {int dummy; } ;


 struct dentry* generic_fh_to_parent (struct super_block*,struct fid*,int,int,int ) ;
 int ntfs_nfs_get_inode ;

__attribute__((used)) static struct dentry *ntfs_fh_to_parent(struct super_block *sb, struct fid *fid,
  int fh_len, int fh_type)
{
 return generic_fh_to_parent(sb, fid, fh_len, fh_type,
        ntfs_nfs_get_inode);
}
