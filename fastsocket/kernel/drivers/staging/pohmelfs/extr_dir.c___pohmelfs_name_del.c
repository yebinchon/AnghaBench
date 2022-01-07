
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pohmelfs_name {int hash_node; } ;
struct pohmelfs_inode {int hash_root; } ;


 int rb_erase (int *,int *) ;

__attribute__((used)) static void __pohmelfs_name_del(struct pohmelfs_inode *parent, struct pohmelfs_name *node)
{
 rb_erase(&node->hash_node, &parent->hash_root);
}
