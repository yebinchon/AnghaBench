
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_inode; int d_parent; } ;


 int d_delete (struct dentry*) ;
 struct dentry* dget (int ) ;
 int dput (struct dentry*) ;
 int simple_rmdir (int ,struct dentry*) ;

__attribute__((used)) static void remove_dir(struct dentry *d)
{
 struct dentry *parent = dget(d->d_parent);

 d_delete(d);
 simple_rmdir(parent->d_inode, d);
 dput(parent);
}
