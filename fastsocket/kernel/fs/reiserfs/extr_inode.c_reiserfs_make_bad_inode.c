
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int INODE_PKEY (struct inode*) ;
 int KEY_SIZE ;
 int make_bad_inode (struct inode*) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static void reiserfs_make_bad_inode(struct inode *inode)
{
 memset(INODE_PKEY(inode), 0, KEY_SIZE);
 make_bad_inode(inode);
}
