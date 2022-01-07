
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pohmelfs_name {int dummy; } ;
struct pohmelfs_inode {int dummy; } ;


 int pohmelfs_fix_offset (struct pohmelfs_inode*,struct pohmelfs_name*) ;
 int pohmelfs_name_free (struct pohmelfs_inode*,struct pohmelfs_name*) ;

void pohmelfs_name_del(struct pohmelfs_inode *parent, struct pohmelfs_name *node)
{
 pohmelfs_fix_offset(parent, node);
 pohmelfs_name_free(parent, node);
}
