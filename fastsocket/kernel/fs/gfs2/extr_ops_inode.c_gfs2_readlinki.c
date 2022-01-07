
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_inode {int i_inode; int i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct gfs2_dinode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_NOFS ;
 int LM_ST_SHARED ;
 int brelse (struct buffer_head*) ;
 int gfs2_consist_inode (struct gfs2_inode*) ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 int gfs2_glock_nq (struct gfs2_holder*) ;
 int gfs2_holder_init (int ,int ,int ,struct gfs2_holder*) ;
 int gfs2_holder_uninit (struct gfs2_holder*) ;
 int gfs2_meta_inode_buffer (struct gfs2_inode*,struct buffer_head**) ;
 scalar_t__ i_size_read (int *) ;
 char* kmalloc (unsigned int,int ) ;
 int memcpy (char*,scalar_t__,unsigned int) ;

__attribute__((used)) static int gfs2_readlinki(struct gfs2_inode *ip, char **buf, unsigned int *len)
{
 struct gfs2_holder i_gh;
 struct buffer_head *dibh;
 unsigned int x, size;
 int error;

 gfs2_holder_init(ip->i_gl, LM_ST_SHARED, 0, &i_gh);
 error = gfs2_glock_nq(&i_gh);
 if (error) {
  gfs2_holder_uninit(&i_gh);
  return error;
 }

 size = (unsigned int)i_size_read(&ip->i_inode);
 if (size == 0) {
  gfs2_consist_inode(ip);
  error = -EIO;
  goto out;
 }

 error = gfs2_meta_inode_buffer(ip, &dibh);
 if (error)
  goto out;

 x = size + 1;
 if (x > *len) {
  *buf = kmalloc(x, GFP_NOFS);
  if (!*buf) {
   error = -ENOMEM;
   goto out_brelse;
  }
 }

 memcpy(*buf, dibh->b_data + sizeof(struct gfs2_dinode), x);
 *len = x;

out_brelse:
 brelse(dibh);
out:
 gfs2_glock_dq_uninit(&i_gh);
 return error;
}
