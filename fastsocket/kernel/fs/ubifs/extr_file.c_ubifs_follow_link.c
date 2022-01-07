
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_inode {int data; } ;
struct nameidata {int dummy; } ;
struct dentry {int d_inode; } ;


 int nd_set_link (struct nameidata*,int ) ;
 struct ubifs_inode* ubifs_inode (int ) ;

__attribute__((used)) static void *ubifs_follow_link(struct dentry *dentry, struct nameidata *nd)
{
 struct ubifs_inode *ui = ubifs_inode(dentry->d_inode);

 nd_set_link(nd, ui->data);
 return ((void*)0);
}
