
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct btrfs_root {int accounting_lock; int root_item; } ;


 scalar_t__ btrfs_root_used (int *) ;
 int btrfs_set_root_used (int *,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void root_add_used(struct btrfs_root *root, u32 size)
{
 spin_lock(&root->accounting_lock);
 btrfs_set_root_used(&root->root_item,
       btrfs_root_used(&root->root_item) + size);
 spin_unlock(&root->accounting_lock);
}
