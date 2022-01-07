
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ino; int * i_fop; } ;
struct dentry {int d_inode; int d_sb; } ;


 int ENOMEM ;
 int S_IFREG ;
 int S_IRUGO ;
 int d_add (struct dentry*,struct inode*) ;
 struct dentry* d_alloc_name (struct dentry*,char*) ;
 int last_class_ino ;
 int sel_class_ops ;
 int sel_class_to_ino (int) ;
 int sel_make_dir (int ,struct dentry*,int *) ;
 struct inode* sel_make_inode (int ,int) ;
 int sel_make_perm_files (char*,int,struct dentry*) ;

__attribute__((used)) static int sel_make_class_dir_entries(char *classname, int index,
     struct dentry *dir)
{
 struct dentry *dentry = ((void*)0);
 struct inode *inode = ((void*)0);
 int rc;

 dentry = d_alloc_name(dir, "index");
 if (!dentry) {
  rc = -ENOMEM;
  goto out;
 }

 inode = sel_make_inode(dir->d_sb, S_IFREG|S_IRUGO);
 if (!inode) {
  rc = -ENOMEM;
  goto out;
 }

 inode->i_fop = &sel_class_ops;
 inode->i_ino = sel_class_to_ino(index);
 d_add(dentry, inode);

 dentry = d_alloc_name(dir, "perms");
 if (!dentry) {
  rc = -ENOMEM;
  goto out;
 }

 rc = sel_make_dir(dir->d_inode, dentry, &last_class_ino);
 if (rc)
  goto out;

 rc = sel_make_perm_files(classname, index, dentry);

out:
 return rc;
}
