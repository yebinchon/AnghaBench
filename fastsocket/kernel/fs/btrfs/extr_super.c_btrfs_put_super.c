
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_2__ {int tree_root; } ;


 TYPE_1__* btrfs_sb (struct super_block*) ;
 int close_ctree (int ) ;

__attribute__((used)) static void btrfs_put_super(struct super_block *sb)
{
 (void)close_ctree(btrfs_sb(sb)->tree_root);






}
