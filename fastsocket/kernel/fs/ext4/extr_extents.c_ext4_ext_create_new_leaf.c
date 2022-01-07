
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ext4_extent {int ee_block; } ;
struct ext4_ext_path {TYPE_1__* p_hdr; } ;
typedef int handle_t ;
typedef int ext4_lblk_t ;
struct TYPE_2__ {scalar_t__ eh_entries; scalar_t__ eh_max; } ;


 scalar_t__ EXT_HAS_FREE_INDEX (struct ext4_ext_path*) ;
 scalar_t__ IS_ERR (struct ext4_ext_path*) ;
 int PTR_ERR (struct ext4_ext_path*) ;
 int ext4_ext_drop_refs (struct ext4_ext_path*) ;
 struct ext4_ext_path* ext4_ext_find_extent (struct inode*,int ,struct ext4_ext_path*) ;
 int ext4_ext_grow_indepth (int *,struct inode*,unsigned int,struct ext4_ext_path*,struct ext4_extent*) ;
 int ext4_ext_split (int *,struct inode*,unsigned int,struct ext4_ext_path*,struct ext4_extent*,int) ;
 int ext_depth (struct inode*) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static int ext4_ext_create_new_leaf(handle_t *handle, struct inode *inode,
        unsigned int flags,
        struct ext4_ext_path *path,
        struct ext4_extent *newext)
{
 struct ext4_ext_path *curp;
 int depth, i, err = 0;

repeat:
 i = depth = ext_depth(inode);


 curp = path + depth;
 while (i > 0 && !EXT_HAS_FREE_INDEX(curp)) {
  i--;
  curp--;
 }



 if (EXT_HAS_FREE_INDEX(curp)) {


  err = ext4_ext_split(handle, inode, flags, path, newext, i);
  if (err)
   goto out;


  ext4_ext_drop_refs(path);
  path = ext4_ext_find_extent(inode,
        (ext4_lblk_t)le32_to_cpu(newext->ee_block),
        path);
  if (IS_ERR(path))
   err = PTR_ERR(path);
 } else {

  err = ext4_ext_grow_indepth(handle, inode, flags,
         path, newext);
  if (err)
   goto out;


  ext4_ext_drop_refs(path);
  path = ext4_ext_find_extent(inode,
       (ext4_lblk_t)le32_to_cpu(newext->ee_block),
        path);
  if (IS_ERR(path)) {
   err = PTR_ERR(path);
   goto out;
  }





  depth = ext_depth(inode);
  if (path[depth].p_hdr->eh_entries == path[depth].p_hdr->eh_max) {

   goto repeat;
  }
 }

out:
 return err;
}
