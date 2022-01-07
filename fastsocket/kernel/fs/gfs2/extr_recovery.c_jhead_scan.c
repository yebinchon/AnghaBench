
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_log_header_host {unsigned int lh_blkno; scalar_t__ lh_sequence; } ;
struct gfs2_jdesc {unsigned int jd_blocks; int jd_inode; } ;


 int EIO ;
 int GFS2_I (int ) ;
 int get_log_header (struct gfs2_jdesc*,unsigned int,struct gfs2_log_header_host*) ;
 int gfs2_consist_inode (int ) ;

__attribute__((used)) static int jhead_scan(struct gfs2_jdesc *jd, struct gfs2_log_header_host *head)
{
 unsigned int blk = head->lh_blkno;
 struct gfs2_log_header_host lh;
 int error;

 for (;;) {
  if (++blk == jd->jd_blocks)
   blk = 0;

  error = get_log_header(jd, blk, &lh);
  if (error < 0)
   return error;
  if (error == 1)
   continue;

  if (lh.lh_sequence == head->lh_sequence) {
   gfs2_consist_inode(GFS2_I(jd->jd_inode));
   return -EIO;
  }
  if (lh.lh_sequence < head->lh_sequence)
   break;

  *head = lh;
 }

 return 0;
}
