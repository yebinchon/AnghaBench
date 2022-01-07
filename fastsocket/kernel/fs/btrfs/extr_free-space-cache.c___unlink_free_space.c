
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_free_space_ctl {int free_extents; int free_space_offset; } ;
struct btrfs_free_space {int offset_index; } ;


 int rb_erase (int *,int *) ;

__attribute__((used)) static inline void
__unlink_free_space(struct btrfs_free_space_ctl *ctl,
      struct btrfs_free_space *info)
{
 rb_erase(&info->offset_index, &ctl->free_space_offset);
 ctl->free_extents--;
}
