
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_free_space_ctl {int free_extents; int free_space; int free_space_offset; } ;
struct btrfs_free_space {scalar_t__ bytes; int * bitmap; int offset_index; int offset; } ;


 int BUG_ON (int) ;
 int tree_insert_offset (int *,int ,int *,int ) ;

__attribute__((used)) static int link_free_space(struct btrfs_free_space_ctl *ctl,
      struct btrfs_free_space *info)
{
 int ret = 0;

 BUG_ON(!info->bitmap && !info->bytes);
 ret = tree_insert_offset(&ctl->free_space_offset, info->offset,
     &info->offset_index, (info->bitmap != ((void*)0)));
 if (ret)
  return ret;

 ctl->free_space += info->bytes;
 ctl->free_extents++;
 return ret;
}
