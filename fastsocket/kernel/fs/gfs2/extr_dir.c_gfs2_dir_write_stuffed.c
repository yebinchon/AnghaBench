
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int i_size; int i_ctime; int i_mtime; } ;
struct gfs2_inode {TYPE_1__ i_inode; int i_gl; } ;
struct gfs2_dinode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int CURRENT_TIME ;
 int brelse (struct buffer_head*) ;
 int gfs2_dinode_out (struct gfs2_inode*,scalar_t__) ;
 int gfs2_meta_inode_buffer (struct gfs2_inode*,struct buffer_head**) ;
 int gfs2_trans_add_meta (int ,struct buffer_head*) ;
 int i_size_write (TYPE_1__*,unsigned int) ;
 int memcpy (scalar_t__,char const*,unsigned int) ;

__attribute__((used)) static int gfs2_dir_write_stuffed(struct gfs2_inode *ip, const char *buf,
      unsigned int offset, unsigned int size)
{
 struct buffer_head *dibh;
 int error;

 error = gfs2_meta_inode_buffer(ip, &dibh);
 if (error)
  return error;

 gfs2_trans_add_meta(ip->i_gl, dibh);
 memcpy(dibh->b_data + offset + sizeof(struct gfs2_dinode), buf, size);
 if (ip->i_inode.i_size < offset + size)
  i_size_write(&ip->i_inode, offset + size);
 ip->i_inode.i_mtime = ip->i_inode.i_ctime = CURRENT_TIME;
 gfs2_dinode_out(ip, dibh->b_data);

 brelse(dibh);

 return size;
}
