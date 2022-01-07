
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_free_space_ctl {int free_space; } ;
struct btrfs_free_space {scalar_t__ bytes; } ;


 int __unlink_free_space (struct btrfs_free_space_ctl*,struct btrfs_free_space*) ;

__attribute__((used)) static void unlink_free_space(struct btrfs_free_space_ctl *ctl,
         struct btrfs_free_space *info)
{
 __unlink_free_space(ctl, info);
 ctl->free_space -= info->bytes;
}
