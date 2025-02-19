
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_log_header_host {int dummy; } ;
struct TYPE_2__ {int mh_type; } ;
struct gfs2_log_descriptor {TYPE_1__ ld_header; int ld_length; } ;
struct gfs2_jdesc {int jd_inode; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int __be64 ;


 int EIO ;
 int GFS2_I (int ) ;
 int GFS2_METATYPE_LD ;
 scalar_t__ GFS2_METATYPE_LH ;
 struct gfs2_sbd* GFS2_SB (int ) ;
 scalar_t__ be32_to_cpu (int ) ;
 int brelse (struct buffer_head*) ;
 int get_log_header (struct gfs2_jdesc*,unsigned int,struct gfs2_log_header_host*) ;
 int gfs2_consist_inode (int ) ;
 scalar_t__ gfs2_meta_check (struct gfs2_sbd*,struct buffer_head*) ;
 scalar_t__ gfs2_metatype_check (struct gfs2_sbd*,struct buffer_head*,int ) ;
 int gfs2_replay_incr_blk (struct gfs2_sbd*,unsigned int*) ;
 int gfs2_replay_read_block (struct gfs2_jdesc*,unsigned int,struct buffer_head**) ;
 int lops_scan_elements (struct gfs2_jdesc*,unsigned int,struct gfs2_log_descriptor*,int *,int) ;

__attribute__((used)) static int foreach_descriptor(struct gfs2_jdesc *jd, unsigned int start,
         unsigned int end, int pass)
{
 struct gfs2_sbd *sdp = GFS2_SB(jd->jd_inode);
 struct buffer_head *bh;
 struct gfs2_log_descriptor *ld;
 int error = 0;
 u32 length;
 __be64 *ptr;
 unsigned int offset = sizeof(struct gfs2_log_descriptor);
 offset += sizeof(__be64) - 1;
 offset &= ~(sizeof(__be64) - 1);

 while (start != end) {
  error = gfs2_replay_read_block(jd, start, &bh);
  if (error)
   return error;
  if (gfs2_meta_check(sdp, bh)) {
   brelse(bh);
   return -EIO;
  }
  ld = (struct gfs2_log_descriptor *)bh->b_data;
  length = be32_to_cpu(ld->ld_length);

  if (be32_to_cpu(ld->ld_header.mh_type) == GFS2_METATYPE_LH) {
   struct gfs2_log_header_host lh;
   error = get_log_header(jd, start, &lh);
   if (!error) {
    gfs2_replay_incr_blk(sdp, &start);
    brelse(bh);
    continue;
   }
   if (error == 1) {
    gfs2_consist_inode(GFS2_I(jd->jd_inode));
    error = -EIO;
   }
   brelse(bh);
   return error;
  } else if (gfs2_metatype_check(sdp, bh, GFS2_METATYPE_LD)) {
   brelse(bh);
   return -EIO;
  }
  ptr = (__be64 *)(bh->b_data + offset);
  error = lops_scan_elements(jd, start, ld, ptr, pass);
  if (error) {
   brelse(bh);
   return error;
  }

  while (length--)
   gfs2_replay_incr_blk(sdp, &start);

  brelse(bh);
 }

 return 0;
}
