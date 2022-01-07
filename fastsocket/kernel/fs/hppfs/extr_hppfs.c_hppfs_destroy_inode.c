
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int HPPFS_I (struct inode*) ;
 int kfree (int ) ;

__attribute__((used)) static void hppfs_destroy_inode(struct inode *inode)
{
 kfree(HPPFS_I(inode));
}
