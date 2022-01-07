
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct ext4_extent_header {int eh_entries; } ;
struct ext4_extent {int dummy; } ;
struct ext4_ext_path {int p_depth; scalar_t__ p_idx; struct ext4_extent* p_ext; void* p_block; struct ext4_extent_header* p_hdr; void* p_bh; } ;


 int EIO ;
 int ENODATA ;
 struct ext4_extent* EXT_FIRST_EXTENT (struct ext4_extent_header*) ;
 scalar_t__ EXT_FIRST_INDEX (struct ext4_extent_header*) ;
 struct ext4_extent* EXT_LAST_EXTENT (struct ext4_extent_header*) ;
 scalar_t__ EXT_LAST_INDEX (struct ext4_extent_header*) ;
 int brelse (void*) ;
 void* ext4_ext_pblock (struct ext4_extent*) ;
 void* ext4_idx_pblock (scalar_t__) ;
 void* ext_block_hdr (void*) ;
 scalar_t__ le16_to_cpu (int ) ;
 void* sb_bread (int ,void*) ;

__attribute__((used)) static int
mext_next_extent(struct inode *inode, struct ext4_ext_path *path,
        struct ext4_extent **extent)
{
 struct ext4_extent_header *eh;
 int ppos, leaf_ppos = path->p_depth;

 ppos = leaf_ppos;
 if (EXT_LAST_EXTENT(path[ppos].p_hdr) > path[ppos].p_ext) {

  *extent = ++path[ppos].p_ext;
  path[ppos].p_block = ext4_ext_pblock(path[ppos].p_ext);
  return 0;
 }

 while (--ppos >= 0) {
  if (EXT_LAST_INDEX(path[ppos].p_hdr) >
      path[ppos].p_idx) {
   int cur_ppos = ppos;


   path[ppos].p_idx++;
   path[ppos].p_block = ext4_idx_pblock(path[ppos].p_idx);
   if (path[ppos+1].p_bh)
    brelse(path[ppos+1].p_bh);
   path[ppos+1].p_bh =
    sb_bread(inode->i_sb, path[ppos].p_block);
   if (!path[ppos+1].p_bh)
    return -EIO;
   path[ppos+1].p_hdr =
    ext_block_hdr(path[ppos+1].p_bh);


   while (++cur_ppos < leaf_ppos) {
    path[cur_ppos].p_idx =
     EXT_FIRST_INDEX(path[cur_ppos].p_hdr);
    path[cur_ppos].p_block =
     ext4_idx_pblock(path[cur_ppos].p_idx);
    if (path[cur_ppos+1].p_bh)
     brelse(path[cur_ppos+1].p_bh);
    path[cur_ppos+1].p_bh = sb_bread(inode->i_sb,
     path[cur_ppos].p_block);
    if (!path[cur_ppos+1].p_bh)
     return -EIO;
    path[cur_ppos+1].p_hdr =
     ext_block_hdr(path[cur_ppos+1].p_bh);
   }

   path[leaf_ppos].p_ext = *extent = ((void*)0);

   eh = path[leaf_ppos].p_hdr;
   if (le16_to_cpu(eh->eh_entries) == 0)

    return -ENODATA;


   path[leaf_ppos].p_ext = *extent =
    EXT_FIRST_EXTENT(path[leaf_ppos].p_hdr);
   path[leaf_ppos].p_block =
     ext4_ext_pblock(path[leaf_ppos].p_ext);
   return 0;
  }
 }

 return 1;
}
