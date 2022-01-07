
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct strip_mine {int dummy; } ;
struct metapath {int* mp_list; } ;
struct gfs2_sbd {int sd_diptrs; int sd_inptrs; } ;
struct gfs2_meta_header {int dummy; } ;
struct gfs2_inode {int i_height; int i_gl; int i_inode; } ;
struct gfs2_dinode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int __be64 ;


 struct gfs2_sbd* GFS2_SB (int *) ;
 int be64_to_cpu (int ) ;
 int brelse (struct buffer_head*) ;
 int do_strip (struct gfs2_inode*,struct buffer_head*,struct buffer_head*,int *,int *,unsigned int,struct strip_mine*) ;
 int gfs2_meta_indirect_buffer (struct gfs2_inode*,unsigned int,int ,struct buffer_head**) ;
 int gfs2_meta_inode_buffer (struct gfs2_inode*,struct buffer_head**) ;
 int gfs2_metapath_ra (int ,struct buffer_head*,int *) ;

__attribute__((used)) static int recursive_scan(struct gfs2_inode *ip, struct buffer_head *dibh,
     struct metapath *mp, unsigned int height,
     u64 block, int first, struct strip_mine *sm)
{
 struct gfs2_sbd *sdp = GFS2_SB(&ip->i_inode);
 struct buffer_head *bh = ((void*)0);
 __be64 *top, *bottom;
 u64 bn;
 int error;
 int mh_size = sizeof(struct gfs2_meta_header);

 if (!height) {
  error = gfs2_meta_inode_buffer(ip, &bh);
  if (error)
   return error;
  dibh = bh;

  top = (__be64 *)(bh->b_data + sizeof(struct gfs2_dinode)) + mp->mp_list[0];
  bottom = (__be64 *)(bh->b_data + sizeof(struct gfs2_dinode)) + sdp->sd_diptrs;
 } else {
  error = gfs2_meta_indirect_buffer(ip, height, block, &bh);
  if (error)
   return error;

  top = (__be64 *)(bh->b_data + mh_size) +
      (first ? mp->mp_list[height] : 0);

  bottom = (__be64 *)(bh->b_data + mh_size) + sdp->sd_inptrs;
 }

 error = do_strip(ip, dibh, bh, top, bottom, height, sm);
 if (error)
  goto out;

 if (height < ip->i_height - 1) {

  gfs2_metapath_ra(ip->i_gl, bh, top);

  for (; top < bottom; top++, first = 0) {
   if (!*top)
    continue;

   bn = be64_to_cpu(*top);

   error = recursive_scan(ip, dibh, mp, height + 1, bn,
            first, sm);
   if (error)
    break;
  }
 }
out:
 brelse(bh);
 return error;
}
