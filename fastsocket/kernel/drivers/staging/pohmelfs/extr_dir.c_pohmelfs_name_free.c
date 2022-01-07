
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pohmelfs_name {int sync_create_entry; } ;
struct pohmelfs_inode {int dummy; } ;


 int __pohmelfs_name_del (struct pohmelfs_inode*,struct pohmelfs_name*) ;
 int kfree (struct pohmelfs_name*) ;
 int list_del (int *) ;

__attribute__((used)) static void pohmelfs_name_free(struct pohmelfs_inode *parent, struct pohmelfs_name *node)
{
 __pohmelfs_name_del(parent, node);
 list_del(&node->sync_create_entry);
 kfree(node);
}
