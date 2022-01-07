
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct super_block {int dummy; } ;
struct inode {int i_ino; struct super_block* i_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_6__ {int i_ext_last; int i_extcnt; int i_lc_shift; int i_lc_mask; int i_lc_size; int* i_lc; struct buffer_head* i_ext_bh; TYPE_1__* i_ac; } ;
struct TYPE_5__ {int extension; } ;
struct TYPE_4__ {int ext; int key; } ;


 int AFFS_AC_MASK ;
 TYPE_3__* AFFS_I (struct inode*) ;
 TYPE_2__* AFFS_TAIL (struct super_block*,struct buffer_head*) ;
 int BUG () ;
 int EIO ;
 struct buffer_head* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct buffer_head*) ;
 struct buffer_head* affs_alloc_extblock (struct inode*,struct buffer_head*,int) ;
 struct buffer_head* affs_bread (struct super_block*,int) ;
 int affs_brelse (struct buffer_head*) ;
 struct buffer_head* affs_get_extblock (struct inode*,int ) ;
 int affs_grow_extcache (struct inode*,int) ;
 int be32_to_cpu (int ) ;
 int get_bh (struct buffer_head*) ;

__attribute__((used)) static struct buffer_head *
affs_get_extblock_slow(struct inode *inode, u32 ext)
{
 struct super_block *sb = inode->i_sb;
 struct buffer_head *bh;
 u32 ext_key;
 u32 lc_idx, lc_off, ac_idx;
 u32 tmp, idx;

 if (ext == AFFS_I(inode)->i_ext_last + 1) {

  bh = AFFS_I(inode)->i_ext_bh;
  ext_key = be32_to_cpu(AFFS_TAIL(sb, bh)->extension);
  if (ext < AFFS_I(inode)->i_extcnt)
   goto read_ext;
  if (ext > AFFS_I(inode)->i_extcnt)
   BUG();
  bh = affs_alloc_extblock(inode, bh, ext);
  if (IS_ERR(bh))
   return bh;
  goto store_ext;
 }

 if (ext == 0) {

  ext_key = inode->i_ino;
  goto read_ext;
 }

 if (ext >= AFFS_I(inode)->i_extcnt) {
  struct buffer_head *prev_bh;


  if (ext > AFFS_I(inode)->i_extcnt)
   BUG();


  prev_bh = affs_get_extblock(inode, ext - 1);
  if (IS_ERR(prev_bh))
   return prev_bh;
  bh = affs_alloc_extblock(inode, prev_bh, ext);
  affs_brelse(prev_bh);
  if (IS_ERR(bh))
   return bh;
  goto store_ext;
 }

again:

 lc_idx = ext >> AFFS_I(inode)->i_lc_shift;
 lc_off = ext & AFFS_I(inode)->i_lc_mask;

 if (lc_idx >= AFFS_I(inode)->i_lc_size) {
  int err;

  err = affs_grow_extcache(inode, lc_idx);
  if (err)
   return ERR_PTR(err);
  goto again;
 }


 if (!lc_off) {
  ext_key = AFFS_I(inode)->i_lc[lc_idx];
  goto read_ext;
 }


 ac_idx = (ext - lc_idx - 1) & AFFS_AC_MASK;
 if (AFFS_I(inode)->i_ac[ac_idx].ext == ext) {
  ext_key = AFFS_I(inode)->i_ac[ac_idx].key;
  goto read_ext;
 }


 tmp = ext;
 idx = ac_idx;
 while (--tmp, --lc_off > 0) {
  idx = (idx - 1) & AFFS_AC_MASK;
  if (AFFS_I(inode)->i_ac[idx].ext == tmp) {
   ext_key = AFFS_I(inode)->i_ac[idx].key;
   goto find_ext;
  }
 }


 ext_key = AFFS_I(inode)->i_lc[lc_idx];
find_ext:


 do {
  bh = affs_bread(sb, ext_key);
  if (!bh)
   goto err_bread;
  ext_key = be32_to_cpu(AFFS_TAIL(sb, bh)->extension);
  affs_brelse(bh);
  tmp++;
 } while (tmp < ext);




 AFFS_I(inode)->i_ac[ac_idx].ext = ext;
 AFFS_I(inode)->i_ac[ac_idx].key = ext_key;

read_ext:


 bh = affs_bread(sb, ext_key);
 if (!bh)
  goto err_bread;


store_ext:

 affs_brelse(AFFS_I(inode)->i_ext_bh);
 AFFS_I(inode)->i_ext_last = ext;
 AFFS_I(inode)->i_ext_bh = bh;
 get_bh(bh);

 return bh;

err_bread:
 affs_brelse(bh);
 return ERR_PTR(-EIO);
}
