
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct gfs2_inode {int dummy; } ;
struct gfs2_dinode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int brelse (struct buffer_head*) ;
 int gfs2_meta_inode_buffer (struct gfs2_inode*,struct buffer_head**) ;
 int memcpy (char*,scalar_t__,unsigned int) ;

__attribute__((used)) static int gfs2_dir_read_stuffed(struct gfs2_inode *ip, char *buf,
     u64 offset, unsigned int size)
{
 struct buffer_head *dibh;
 int error;

 error = gfs2_meta_inode_buffer(ip, &dibh);
 if (!error) {
  offset += sizeof(struct gfs2_dinode);
  memcpy(buf, dibh->b_data + offset, size);
  brelse(dibh);
 }

 return (error) ? error : size;
}
