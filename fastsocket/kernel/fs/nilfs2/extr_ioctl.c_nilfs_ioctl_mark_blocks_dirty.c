
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct the_nilfs {int dummy; } ;
struct nilfs_bmap {int dummy; } ;
struct nilfs_bdesc {scalar_t__ bd_level; scalar_t__ bd_blocknr; scalar_t__ bd_oblocknr; int bd_offset; } ;
struct nilfs_argv {size_t v_nmembs; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct nilfs_bmap* i_bmap; } ;


 int ENOENT ;
 TYPE_1__* NILFS_I (struct inode*) ;
 int WARN_ON (int) ;
 int nilfs_bmap_lookup_at_level (struct nilfs_bmap*,int ,scalar_t__,scalar_t__*) ;
 int nilfs_bmap_mark (struct nilfs_bmap*,int ,scalar_t__) ;
 struct inode* nilfs_dat_inode (struct the_nilfs*) ;
 int nilfs_mdt_mark_block_dirty (struct inode*,int ) ;

__attribute__((used)) static int nilfs_ioctl_mark_blocks_dirty(struct the_nilfs *nilfs,
      struct nilfs_argv *argv, void *buf)
{
 size_t nmembs = argv->v_nmembs;
 struct inode *dat = nilfs_dat_inode(nilfs);
 struct nilfs_bmap *bmap = NILFS_I(dat)->i_bmap;
 struct nilfs_bdesc *bdescs = buf;
 int ret, i;

 for (i = 0; i < nmembs; i++) {

  ret = nilfs_bmap_lookup_at_level(bmap,
       bdescs[i].bd_offset,
       bdescs[i].bd_level + 1,
       &bdescs[i].bd_blocknr);
  if (ret < 0) {
   if (ret != -ENOENT)
    return ret;
   bdescs[i].bd_blocknr = 0;
  }
  if (bdescs[i].bd_blocknr != bdescs[i].bd_oblocknr)

   continue;
  if (bdescs[i].bd_level == 0) {
   ret = nilfs_mdt_mark_block_dirty(dat,
        bdescs[i].bd_offset);
   if (ret < 0) {
    WARN_ON(ret == -ENOENT);
    return ret;
   }
  } else {
   ret = nilfs_bmap_mark(bmap, bdescs[i].bd_offset,
           bdescs[i].bd_level);
   if (ret < 0) {
    WARN_ON(ret == -ENOENT);
    return ret;
   }
  }
 }
 return nmembs;
}
