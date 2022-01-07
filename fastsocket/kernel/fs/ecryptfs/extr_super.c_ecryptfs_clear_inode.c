
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int ecryptfs_inode_to_lower (struct inode*) ;
 int iput (int ) ;

__attribute__((used)) static void ecryptfs_clear_inode(struct inode *inode)
{
 iput(ecryptfs_inode_to_lower(inode));
}
