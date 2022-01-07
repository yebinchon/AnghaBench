
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int reiserfs_truncate_file (struct inode*,int) ;

__attribute__((used)) static void reiserfs_vfs_truncate_file(struct inode *inode)
{
 reiserfs_truncate_file(inode, 1);
}
