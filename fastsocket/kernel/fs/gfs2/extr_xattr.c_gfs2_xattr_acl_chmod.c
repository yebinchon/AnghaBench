
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct iattr {int dummy; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_inode {int i_gl; struct inode i_inode; } ;
struct gfs2_ea_location {int el_bh; int el_ea; } ;


 int GFS2_EA2DATA (int ) ;
 int GFS2_EATYPE_SYS ;
 int GFS2_EA_DATA_LEN (int ) ;
 scalar_t__ GFS2_EA_IS_STUFFED (int ) ;
 int GFS2_POSIX_ACL_ACCESS ;
 struct gfs2_sbd* GFS2_SB (struct inode*) ;
 scalar_t__ RES_DINODE ;
 scalar_t__ RES_EATTR ;
 int brelse (int ) ;
 int ea_acl_chmod_unstuffed (struct gfs2_inode*,int ,char*) ;
 int gfs2_ea_find (struct gfs2_inode*,int ,int ,struct gfs2_ea_location*) ;
 int gfs2_setattr_simple (struct inode*,struct iattr*) ;
 int gfs2_trans_add_meta (int ,int ) ;
 int gfs2_trans_begin (struct gfs2_sbd*,scalar_t__,int ) ;
 int gfs2_trans_end (struct gfs2_sbd*) ;
 int memcpy (int ,char*,int ) ;

int gfs2_xattr_acl_chmod(struct gfs2_inode *ip, struct iattr *attr, char *data)
{
 struct inode *inode = &ip->i_inode;
 struct gfs2_sbd *sdp = GFS2_SB(inode);
 struct gfs2_ea_location el;
 int error;

 error = gfs2_ea_find(ip, GFS2_EATYPE_SYS, GFS2_POSIX_ACL_ACCESS, &el);
 if (error)
  return error;

 if (GFS2_EA_IS_STUFFED(el.el_ea)) {
  error = gfs2_trans_begin(sdp, RES_DINODE + RES_EATTR, 0);
  if (error == 0) {
   gfs2_trans_add_meta(ip->i_gl, el.el_bh);
   memcpy(GFS2_EA2DATA(el.el_ea), data,
          GFS2_EA_DATA_LEN(el.el_ea));
  }
 } else {
  error = ea_acl_chmod_unstuffed(ip, el.el_ea, data);
 }

 brelse(el.el_bh);
 if (error)
  return error;

 error = gfs2_setattr_simple(inode, attr);
 gfs2_trans_end(sdp);
 return error;
}
