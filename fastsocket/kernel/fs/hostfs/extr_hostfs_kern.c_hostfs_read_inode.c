
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_dentry; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (char*) ;
 scalar_t__ OS_TYPE_SYMLINK ;
 int PTR_ERR (char*) ;
 scalar_t__ file_type (char*,int *,int *) ;
 char* follow_link (char*) ;
 char* inode_name (struct inode*,int ) ;
 int kfree (char*) ;
 scalar_t__ list_empty (int *) ;
 int read_name (struct inode*,char*) ;

__attribute__((used)) static int hostfs_read_inode(struct inode *ino)
{
 char *name;
 int err = 0;





 if (list_empty(&ino->i_dentry))
  goto out;

 err = -ENOMEM;
 name = inode_name(ino, 0);
 if (name == ((void*)0))
  goto out;

 if (file_type(name, ((void*)0), ((void*)0)) == OS_TYPE_SYMLINK) {
  name = follow_link(name);
  if (IS_ERR(name)) {
   err = PTR_ERR(name);
   goto out;
  }
 }

 err = read_name(ino, name);
 kfree(name);
 out:
 return err;
}
