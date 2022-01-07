
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int fat_cache_inval_inode (struct inode*) ;
 int fat_detach (struct inode*) ;

__attribute__((used)) static void fat_clear_inode(struct inode *inode)
{
 fat_cache_inval_inode(inode);
 fat_detach(inode);
}
