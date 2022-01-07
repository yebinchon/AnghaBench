
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct reiserfs_dir_entry {int de_dir_id; int * de_gen_number_bit_string; } ;
struct nameidata {int dummy; } ;
struct inode {TYPE_2__* i_sb; int i_flags; } ;
struct TYPE_5__ {scalar_t__ len; int name; } ;
struct dentry {TYPE_1__ d_name; } ;
struct cpu_key {int dummy; } ;
struct TYPE_6__ {int s_blocksize; } ;


 int EACCES ;
 int EIO ;
 int ENAMETOOLONG ;
 struct dentry* ERR_PTR (int ) ;
 int INITIALIZE_PATH (int ) ;
 int IO_ERROR ;
 scalar_t__ IS_ERR (struct inode*) ;
 scalar_t__ IS_PRIVATE (struct inode*) ;
 int NAME_FOUND ;
 scalar_t__ REISERFS_MAX_NAME (int ) ;
 int S_PRIVATE ;
 struct dentry* d_splice_alias (struct inode*,struct dentry*) ;
 int path_to_entry ;
 int pathrelse (int *) ;
 int reiserfs_find_entry (struct inode*,int ,scalar_t__,int *,struct reiserfs_dir_entry*) ;
 struct inode* reiserfs_iget (TYPE_2__*,struct cpu_key*) ;
 int reiserfs_write_lock (TYPE_2__*) ;
 int reiserfs_write_unlock (TYPE_2__*) ;

__attribute__((used)) static struct dentry *reiserfs_lookup(struct inode *dir, struct dentry *dentry,
          struct nameidata *nd)
{
 int retval;
 struct inode *inode = ((void*)0);
 struct reiserfs_dir_entry de;
 INITIALIZE_PATH(path_to_entry);

 if (REISERFS_MAX_NAME(dir->i_sb->s_blocksize) < dentry->d_name.len)
  return ERR_PTR(-ENAMETOOLONG);

 reiserfs_write_lock(dir->i_sb);
 de.de_gen_number_bit_string = ((void*)0);
 retval =
     reiserfs_find_entry(dir, dentry->d_name.name, dentry->d_name.len,
    &path_to_entry, &de);
 pathrelse(&path_to_entry);
 if (retval == NAME_FOUND) {
  inode = reiserfs_iget(dir->i_sb,
          (struct cpu_key *)&(de.de_dir_id));
  if (!inode || IS_ERR(inode)) {
   reiserfs_write_unlock(dir->i_sb);
   return ERR_PTR(-EACCES);
  }



  if (IS_PRIVATE(dir))
   inode->i_flags |= S_PRIVATE;
 }
 reiserfs_write_unlock(dir->i_sb);
 if (retval == IO_ERROR) {
  return ERR_PTR(-EIO);
 }

 return d_splice_alias(inode, dentry);
}
