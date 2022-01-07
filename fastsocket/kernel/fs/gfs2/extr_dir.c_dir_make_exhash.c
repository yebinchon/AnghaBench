
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct qstr {int len; scalar_t__ name; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int sb_bsize; } ;
struct gfs2_sbd {int sd_hash_ptrs; TYPE_1__ sd_sb; } ;
struct gfs2_leaf {void* lf_entries; } ;
struct gfs2_inode {int i_entries; int i_depth; int i_diskflags; int i_inode; int i_gl; } ;
struct gfs2_dirent {void* de_rec_len; } ;
struct gfs2_dinode {int dummy; } ;
struct buffer_head {int b_size; scalar_t__ b_data; int b_blocknr; } ;
typedef int __be64 ;


 int EIO ;
 int ENOSPC ;
 int GFS2_DIF_EXHASH ;
 struct gfs2_inode* GFS2_I (struct inode*) ;
 struct gfs2_sbd* GFS2_SB (struct inode*) ;
 scalar_t__ IS_ERR (struct gfs2_dirent*) ;
 int PTR_ERR (struct gfs2_dirent*) ;
 int be16_to_cpu (void*) ;
 int brelse (struct buffer_head*) ;
 void* cpu_to_be16 (int) ;
 int cpu_to_be64 (int ) ;
 int gfs2_add_inode_blocks (int *,int) ;
 int gfs2_assert (struct gfs2_sbd*,int) ;
 int gfs2_buffer_clear_tail (struct buffer_head*,int) ;
 int gfs2_buffer_copy_tail (struct buffer_head*,int,struct buffer_head*,int) ;
 int gfs2_dinode_out (struct gfs2_inode*,scalar_t__) ;
 int gfs2_dirent_last ;
 struct gfs2_dirent* gfs2_dirent_scan (int *,scalar_t__,int,int ,struct qstr*,int *) ;
 int gfs2_meta_inode_buffer (struct gfs2_inode*,struct buffer_head**) ;
 int gfs2_trans_add_meta (int ,struct buffer_head*) ;
 int i_size_write (struct inode*,int) ;
 struct gfs2_leaf* new_leaf (struct inode*,struct buffer_head**,int ) ;

__attribute__((used)) static int dir_make_exhash(struct inode *inode)
{
 struct gfs2_inode *dip = GFS2_I(inode);
 struct gfs2_sbd *sdp = GFS2_SB(inode);
 struct gfs2_dirent *dent;
 struct qstr args;
 struct buffer_head *bh, *dibh;
 struct gfs2_leaf *leaf;
 int y;
 u32 x;
 __be64 *lp;
 u64 bn;
 int error;

 error = gfs2_meta_inode_buffer(dip, &dibh);
 if (error)
  return error;



 leaf = new_leaf(inode, &bh, 0);
 if (!leaf)
  return -ENOSPC;
 bn = bh->b_blocknr;

 gfs2_assert(sdp, dip->i_entries < (1 << 16));
 leaf->lf_entries = cpu_to_be16(dip->i_entries);



 gfs2_buffer_copy_tail(bh, sizeof(struct gfs2_leaf), dibh,
        sizeof(struct gfs2_dinode));



 x = 0;
 args.len = bh->b_size - sizeof(struct gfs2_dinode) +
     sizeof(struct gfs2_leaf);
 args.name = bh->b_data;
 dent = gfs2_dirent_scan(&dip->i_inode, bh->b_data, bh->b_size,
    gfs2_dirent_last, &args, ((void*)0));
 if (!dent) {
  brelse(bh);
  brelse(dibh);
  return -EIO;
 }
 if (IS_ERR(dent)) {
  brelse(bh);
  brelse(dibh);
  return PTR_ERR(dent);
 }




 dent->de_rec_len = cpu_to_be16(be16_to_cpu(dent->de_rec_len) +
  sizeof(struct gfs2_dinode) -
  sizeof(struct gfs2_leaf));

 brelse(bh);




 gfs2_trans_add_meta(dip->i_gl, dibh);
 gfs2_buffer_clear_tail(dibh, sizeof(struct gfs2_dinode));

 lp = (__be64 *)(dibh->b_data + sizeof(struct gfs2_dinode));

 for (x = sdp->sd_hash_ptrs; x--; lp++)
  *lp = cpu_to_be64(bn);

 i_size_write(inode, sdp->sd_sb.sb_bsize / 2);
 gfs2_add_inode_blocks(&dip->i_inode, 1);
 dip->i_diskflags |= GFS2_DIF_EXHASH;

 for (x = sdp->sd_hash_ptrs, y = -1; x; x >>= 1, y++) ;
 dip->i_depth = y;

 gfs2_dinode_out(dip, dibh->b_data);

 brelse(dibh);

 return 0;
}
