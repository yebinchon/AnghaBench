
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_5__ {scalar_t__ i_nlink; int i_ctime; } ;
struct gfs2_inode {TYPE_1__ i_inode; int i_gl; } ;
struct buffer_head {int b_data; } ;


 int BUG_ON (int) ;
 int CURRENT_TIME ;
 int EIO ;
 int brelse (struct buffer_head*) ;
 int drop_nlink (TYPE_1__*) ;
 scalar_t__ gfs2_consist_inode (struct gfs2_inode*) ;
 int gfs2_dinode_out (struct gfs2_inode*,int ) ;
 int gfs2_dinode_print (struct gfs2_inode*) ;
 int gfs2_meta_inode_buffer (struct gfs2_inode*,struct buffer_head**) ;
 int gfs2_trans_add_meta (int ,struct buffer_head*) ;
 int gfs2_unlink_di (TYPE_1__*) ;
 int inc_nlink (TYPE_1__*) ;
 int mark_inode_dirty (TYPE_1__*) ;

int gfs2_change_nlink(struct gfs2_inode *ip, int diff)
{
 struct buffer_head *dibh;
 u32 nlink;
 int error;

 BUG_ON(diff != 1 && diff != -1);
 nlink = ip->i_inode.i_nlink + diff;



 if (diff < 0 && nlink > ip->i_inode.i_nlink) {
  if (gfs2_consist_inode(ip))
   gfs2_dinode_print(ip);
  return -EIO;
 }

 error = gfs2_meta_inode_buffer(ip, &dibh);
 if (error)
  return error;

 if (diff > 0)
  inc_nlink(&ip->i_inode);
 else
  drop_nlink(&ip->i_inode);

 ip->i_inode.i_ctime = CURRENT_TIME;

 gfs2_trans_add_meta(ip->i_gl, dibh);
 gfs2_dinode_out(ip, dibh->b_data);
 brelse(dibh);
 mark_inode_dirty(&ip->i_inode);

 if (ip->i_inode.i_nlink == 0)
  gfs2_unlink_di(&ip->i_inode);

 return error;
}
