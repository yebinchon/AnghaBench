
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int cifs_fscache_release_inode_cookie (struct inode*) ;

__attribute__((used)) static void
cifs_clear_inode(struct inode *inode)
{
 cifs_fscache_release_inode_cookie(inode);
}
