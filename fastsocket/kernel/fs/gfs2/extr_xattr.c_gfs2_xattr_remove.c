
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct gfs2_inode {int i_eattr; } ;
struct gfs2_ea_location {int el_bh; int el_prev; int el_ea; } ;


 int ENODATA ;
 scalar_t__ GFS2_EA_IS_STUFFED (int ) ;
 struct gfs2_inode* GFS2_I (struct inode*) ;
 int brelse (int ) ;
 int ea_remove_stuffed (struct gfs2_inode*,struct gfs2_ea_location*) ;
 int ea_remove_unstuffed (struct gfs2_inode*,int ,int ,int ,int ) ;
 int gfs2_ea_find (struct gfs2_inode*,int,char const*,struct gfs2_ea_location*) ;

__attribute__((used)) static int gfs2_xattr_remove(struct inode *inode, int type, const char *name)
{
 struct gfs2_inode *ip = GFS2_I(inode);
 struct gfs2_ea_location el;
 int error;

 if (!ip->i_eattr)
  return -ENODATA;

 error = gfs2_ea_find(ip, type, name, &el);
 if (error)
  return error;
 if (!el.el_ea)
  return -ENODATA;

 if (GFS2_EA_IS_STUFFED(el.el_ea))
  error = ea_remove_stuffed(ip, &el);
 else
  error = ea_remove_unstuffed(ip, el.el_bh, el.el_ea, el.el_prev, 0);

 brelse(el.el_bh);

 return error;
}
