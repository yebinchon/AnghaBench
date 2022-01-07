
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_dir_entry {int de_dir_id; int * de_gen_number_bit_string; } ;
struct inode {scalar_t__ i_nlink; int i_sb; } ;
struct dentry {struct inode* d_inode; } ;
struct cpu_key {int dummy; } ;


 int ENOENT ;
 struct dentry* ERR_PTR (int ) ;
 int INITIALIZE_PATH (int ) ;
 int NAME_FOUND ;
 struct dentry* d_obtain_alias (struct inode*) ;
 int path_to_entry ;
 int pathrelse (int *) ;
 int reiserfs_find_entry (struct inode*,char*,int,int *,struct reiserfs_dir_entry*) ;
 struct inode* reiserfs_iget (int ,struct cpu_key*) ;
 int reiserfs_write_lock (int ) ;
 int reiserfs_write_unlock (int ) ;

struct dentry *reiserfs_get_parent(struct dentry *child)
{
 int retval;
 struct inode *inode = ((void*)0);
 struct reiserfs_dir_entry de;
 INITIALIZE_PATH(path_to_entry);
 struct inode *dir = child->d_inode;

 if (dir->i_nlink == 0) {
  return ERR_PTR(-ENOENT);
 }
 de.de_gen_number_bit_string = ((void*)0);

 reiserfs_write_lock(dir->i_sb);
 retval = reiserfs_find_entry(dir, "..", 2, &path_to_entry, &de);
 pathrelse(&path_to_entry);
 if (retval != NAME_FOUND) {
  reiserfs_write_unlock(dir->i_sb);
  return ERR_PTR(-ENOENT);
 }
 inode = reiserfs_iget(dir->i_sb, (struct cpu_key *)&(de.de_dir_id));
 reiserfs_write_unlock(dir->i_sb);

 return d_obtain_alias(inode);
}
