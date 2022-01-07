
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ext4_ext_path {int p_depth; TYPE_1__* p_idx; int p_hdr; TYPE_2__* p_ext; } ;
typedef int ext4_lblk_t ;
struct TYPE_4__ {int ee_block; } ;
struct TYPE_3__ {int ei_block; } ;


 int BUG_ON (int ) ;
 TYPE_2__* EXT_LAST_EXTENT (int ) ;
 TYPE_1__* EXT_LAST_INDEX (int ) ;
 int EXT_MAX_BLOCKS ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static ext4_lblk_t
ext4_ext_next_allocated_block(struct ext4_ext_path *path)
{
 int depth;

 BUG_ON(path == ((void*)0));
 depth = path->p_depth;

 if (depth == 0 && path->p_ext == ((void*)0))
  return EXT_MAX_BLOCKS;

 while (depth >= 0) {
  if (depth == path->p_depth) {

   if (path[depth].p_ext &&
    path[depth].p_ext !=
     EXT_LAST_EXTENT(path[depth].p_hdr))
     return le32_to_cpu(path[depth].p_ext[1].ee_block);
  } else {

   if (path[depth].p_idx !=
     EXT_LAST_INDEX(path[depth].p_hdr))
     return le32_to_cpu(path[depth].p_idx[1].ei_block);
  }
  depth--;
 }

 return EXT_MAX_BLOCKS;
}
