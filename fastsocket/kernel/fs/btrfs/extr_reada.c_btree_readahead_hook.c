
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct extent_buffer {int dummy; } ;
struct btrfs_root {int fs_info; } ;


 int __readahead_hook (struct btrfs_root*,struct extent_buffer*,int ,int) ;
 int reada_start_machine (int ) ;

int btree_readahead_hook(struct btrfs_root *root, struct extent_buffer *eb,
    u64 start, int err)
{
 int ret;

 ret = __readahead_hook(root, eb, start, err);

 reada_start_machine(root->fs_info);

 return ret;
}
