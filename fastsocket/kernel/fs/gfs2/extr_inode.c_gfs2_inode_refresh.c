
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_inode {int i_flags; } ;
struct buffer_head {int b_data; } ;


 int GIF_INVALID ;
 int brelse (struct buffer_head*) ;
 int clear_bit (int ,int *) ;
 int gfs2_dinode_in (struct gfs2_inode*,int ) ;
 int gfs2_meta_inode_buffer (struct gfs2_inode*,struct buffer_head**) ;

int gfs2_inode_refresh(struct gfs2_inode *ip)
{
 struct buffer_head *dibh;
 int error;

 error = gfs2_meta_inode_buffer(ip, &dibh);
 if (error)
  return error;

 error = gfs2_dinode_in(ip, dibh->b_data);
 brelse(dibh);
 clear_bit(GIF_INVALID, &ip->i_flags);

 return error;
}
