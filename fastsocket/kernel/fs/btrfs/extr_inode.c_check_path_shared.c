
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct extent_buffer {int len; int start; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {struct extent_buffer** nodes; } ;


 int BTRFS_MAX_LEVEL ;
 int btrfs_block_can_be_shared (struct btrfs_root*,struct extent_buffer*) ;
 int btrfs_lookup_extent_info (int *,struct btrfs_root*,int ,int ,int*,int *) ;

__attribute__((used)) static int check_path_shared(struct btrfs_root *root,
        struct btrfs_path *path)
{
 struct extent_buffer *eb;
 int level;
 u64 refs = 1;

 for (level = 0; level < BTRFS_MAX_LEVEL; level++) {
  int ret;

  if (!path->nodes[level])
   break;
  eb = path->nodes[level];
  if (!btrfs_block_can_be_shared(root, eb))
   continue;
  ret = btrfs_lookup_extent_info(((void*)0), root, eb->start, eb->len,
            &refs, ((void*)0));
  if (refs > 1)
   return 1;
 }
 return 0;
}
