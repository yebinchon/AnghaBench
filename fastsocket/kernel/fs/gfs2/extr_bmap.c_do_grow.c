
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct inode {int dummy; } ;
struct TYPE_5__ {scalar_t__ ar_quota; } ;
struct TYPE_4__ {int sb_bsize; } ;
struct gfs2_sbd {TYPE_2__ sd_args; TYPE_1__ sd_sb; scalar_t__ sd_max_height; } ;
struct TYPE_6__ {int i_ctime; int i_mtime; } ;
struct gfs2_inode {int i_gl; TYPE_3__ i_inode; } ;
struct gfs2_dinode {int dummy; } ;
struct gfs2_alloc_parms {scalar_t__ target; } ;
struct buffer_head {int b_data; } ;


 int CURRENT_TIME ;
 struct gfs2_inode* GFS2_I (struct inode*) ;
 scalar_t__ GFS2_QUOTA_OFF ;
 struct gfs2_sbd* GFS2_SB (struct inode*) ;
 scalar_t__ RES_DATA ;
 scalar_t__ RES_DINODE ;
 scalar_t__ RES_QUOTA ;
 scalar_t__ RES_RG_BIT ;
 scalar_t__ RES_STATFS ;
 int brelse (struct buffer_head*) ;
 int gfs2_dinode_out (struct gfs2_inode*,int ) ;
 int gfs2_inplace_release (struct gfs2_inode*) ;
 int gfs2_inplace_reserve (struct gfs2_inode*,struct gfs2_alloc_parms*) ;
 scalar_t__ gfs2_is_stuffed (struct gfs2_inode*) ;
 int gfs2_meta_inode_buffer (struct gfs2_inode*,struct buffer_head**) ;
 int gfs2_quota_lock_check (struct gfs2_inode*) ;
 int gfs2_quota_unlock (struct gfs2_inode*) ;
 int gfs2_trans_add_meta (int ,struct buffer_head*) ;
 int gfs2_trans_begin (struct gfs2_sbd*,scalar_t__,int ) ;
 int gfs2_trans_end (struct gfs2_sbd*) ;
 int gfs2_unstuff_dinode (struct gfs2_inode*,int *) ;
 int i_size_write (struct inode*,int) ;

__attribute__((used)) static int do_grow(struct inode *inode, u64 size)
{
 struct gfs2_inode *ip = GFS2_I(inode);
 struct gfs2_sbd *sdp = GFS2_SB(inode);
 struct gfs2_alloc_parms ap = { .target = sdp->sd_max_height + RES_DATA, };
 struct buffer_head *dibh;
 int error;
 int unstuff = 0;

 if (gfs2_is_stuffed(ip) &&
     (size > (sdp->sd_sb.sb_bsize - sizeof(struct gfs2_dinode)))) {
  error = gfs2_quota_lock_check(ip);
  if (error)
   return error;

  error = gfs2_inplace_reserve(ip, &ap);
  if (error)
   goto do_grow_qunlock;
  unstuff = 1;
 }

 error = gfs2_trans_begin(sdp, RES_DINODE + RES_STATFS + RES_RG_BIT +
     (sdp->sd_args.ar_quota == GFS2_QUOTA_OFF ?
      0 : RES_QUOTA), 0);
 if (error)
  goto do_grow_release;

 if (unstuff) {
  error = gfs2_unstuff_dinode(ip, ((void*)0));
  if (error)
   goto do_end_trans;
 }

 error = gfs2_meta_inode_buffer(ip, &dibh);
 if (error)
  goto do_end_trans;

 i_size_write(inode, size);
 ip->i_inode.i_mtime = ip->i_inode.i_ctime = CURRENT_TIME;
 gfs2_trans_add_meta(ip->i_gl, dibh);
 gfs2_dinode_out(ip, dibh->b_data);
 brelse(dibh);

do_end_trans:
 gfs2_trans_end(sdp);
do_grow_release:
 if (unstuff) {
  gfs2_inplace_release(ip);
do_grow_qunlock:
  gfs2_quota_unlock(ip);
 }
 return error;
}
