
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {char const* name; scalar_t__ len; int hash; } ;
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; struct qstr d_name; } ;


 int POHMELFS_I (struct inode*) ;
 int S_IFLNK ;
 int S_IRWXG ;
 int S_IRWXO ;
 int S_IRWXU ;
 int iput (struct inode*) ;
 int jhash (char const*,scalar_t__,int ) ;
 int page_symlink (struct inode*,char const*,scalar_t__) ;
 int pohmelfs_create_entry (struct inode*,struct dentry*,int ,int) ;
 int pohmelfs_create_link (int ,struct qstr*,int *,struct qstr*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int pohmelfs_symlink(struct inode *dir, struct dentry *dentry, const char *symname)
{
 struct qstr sym_str;
 struct qstr str = dentry->d_name;
 struct inode *inode;
 int err;

 str.hash = jhash(dentry->d_name.name, dentry->d_name.len, 0);

 sym_str.name = symname;
 sym_str.len = strlen(symname);

 err = pohmelfs_create_link(POHMELFS_I(dir), &str, ((void*)0), &sym_str);
 if (err)
  goto err_out_exit;

 err = pohmelfs_create_entry(dir, dentry, 0, S_IFLNK | S_IRWXU | S_IRWXG | S_IRWXO);
 if (err)
  goto err_out_exit;

 inode = dentry->d_inode;

 err = page_symlink(inode, symname, sym_str.len + 1);
 if (err)
  goto err_out_put;

 return 0;

err_out_put:
 iput(inode);
err_out_exit:
 return err;
}
