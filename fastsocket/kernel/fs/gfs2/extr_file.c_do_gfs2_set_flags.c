
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct inode {int i_mapping; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_inode {int i_diskflags; int i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct TYPE_4__ {int mnt; TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct buffer_head {int b_data; } ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int CAP_LINUX_IMMUTABLE ;
 int EACCES ;
 int EINVAL ;
 int EPERM ;
 int GFS2_DIF_APPENDONLY ;
 int GFS2_DIF_IMMUTABLE ;
 int GFS2_DIF_JDATA ;
 int GFS2_FLAGS_USER_SET ;
 struct gfs2_inode* GFS2_I (struct inode*) ;
 struct gfs2_sbd* GFS2_SB (struct inode*) ;
 scalar_t__ IS_APPEND (struct inode*) ;
 scalar_t__ IS_IMMUTABLE (struct inode*) ;
 int LM_ST_EXCLUSIVE ;
 int MAY_WRITE ;
 int RES_DINODE ;
 int brelse (struct buffer_head*) ;
 int capable (int ) ;
 int filemap_fdatawait (int ) ;
 int filemap_fdatawrite (int ) ;
 int gfs2_dinode_out (struct gfs2_inode*,int ) ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 int gfs2_glock_nq_init (int ,int ,int ,struct gfs2_holder*) ;
 int gfs2_log_flush (struct gfs2_sbd*,int ) ;
 int gfs2_meta_inode_buffer (struct gfs2_inode*,struct buffer_head**) ;
 int gfs2_permission (struct inode*,int ) ;
 int gfs2_set_aops (struct inode*) ;
 int gfs2_set_inode_flags (struct inode*) ;
 int gfs2_trans_add_meta (int ,struct buffer_head*) ;
 int gfs2_trans_begin (struct gfs2_sbd*,int ,int ) ;
 int gfs2_trans_end (struct gfs2_sbd*) ;
 int is_owner_or_cap (struct inode*) ;
 int mnt_drop_write (int ) ;
 int mnt_want_write (int ) ;

__attribute__((used)) static int do_gfs2_set_flags(struct file *filp, u32 reqflags, u32 mask)
{
 struct inode *inode = filp->f_path.dentry->d_inode;
 struct gfs2_inode *ip = GFS2_I(inode);
 struct gfs2_sbd *sdp = GFS2_SB(inode);
 struct buffer_head *bh;
 struct gfs2_holder gh;
 int error;
 u32 new_flags, flags;

 error = mnt_want_write(filp->f_path.mnt);
 if (error)
  return error;

 error = gfs2_glock_nq_init(ip->i_gl, LM_ST_EXCLUSIVE, 0, &gh);
 if (error)
  goto out_drop_write;

 error = -EACCES;
 if (!is_owner_or_cap(inode))
  goto out;

 error = 0;
 flags = ip->i_diskflags;
 new_flags = (flags & ~mask) | (reqflags & mask);
 if ((new_flags ^ flags) == 0)
  goto out;

 error = -EINVAL;
 if ((new_flags ^ flags) & ~GFS2_FLAGS_USER_SET)
  goto out;

 error = -EPERM;
 if (IS_IMMUTABLE(inode) && (new_flags & GFS2_DIF_IMMUTABLE))
  goto out;
 if (IS_APPEND(inode) && (new_flags & GFS2_DIF_APPENDONLY))
  goto out;
 if (((new_flags ^ flags) & GFS2_DIF_IMMUTABLE) &&
     !capable(CAP_LINUX_IMMUTABLE))
  goto out;
 if (!IS_IMMUTABLE(inode)) {
  error = gfs2_permission(inode, MAY_WRITE);
  if (error)
   goto out;
 }
 if ((flags ^ new_flags) & GFS2_DIF_JDATA) {
  if (flags & GFS2_DIF_JDATA)
   gfs2_log_flush(sdp, ip->i_gl);
  error = filemap_fdatawrite(inode->i_mapping);
  if (error)
   goto out;
  error = filemap_fdatawait(inode->i_mapping);
  if (error)
   goto out;
 }
 error = gfs2_trans_begin(sdp, RES_DINODE, 0);
 if (error)
  goto out;
 error = gfs2_meta_inode_buffer(ip, &bh);
 if (error)
  goto out_trans_end;
 gfs2_trans_add_meta(ip->i_gl, bh);
 ip->i_diskflags = new_flags;
 gfs2_dinode_out(ip, bh->b_data);
 brelse(bh);
 gfs2_set_inode_flags(inode);
 gfs2_set_aops(inode);
out_trans_end:
 gfs2_trans_end(sdp);
out:
 gfs2_glock_dq_uninit(&gh);
out_drop_write:
 mnt_drop_write(filp->f_path.mnt);
 return error;
}
