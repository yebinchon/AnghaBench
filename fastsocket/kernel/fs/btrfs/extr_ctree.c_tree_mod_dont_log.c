
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int dummy; } ;
struct btrfs_fs_info {int tree_mod_seq_list; } ;


 scalar_t__ btrfs_header_level (struct extent_buffer*) ;
 scalar_t__ list_empty (int *) ;
 int smp_mb () ;

__attribute__((used)) static inline int tree_mod_dont_log(struct btrfs_fs_info *fs_info,
        struct extent_buffer *eb) {
 smp_mb();
 if (list_empty(&(fs_info)->tree_mod_seq_list))
  return 1;
 if (!eb)
  return 0;
 if (btrfs_header_level(eb) == 0)
  return 1;
 return 0;
}
