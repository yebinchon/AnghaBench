
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode {int i_mapping; } ;
struct gfs2_sbd {struct inode* sd_rindex; } ;
struct gfs2_rindex {int ri_data; } ;
struct gfs2_inode {int dummy; } ;
struct file_ra_state {int dummy; } ;
typedef scalar_t__ loff_t ;


 struct gfs2_inode* GFS2_I (struct inode*) ;
 scalar_t__ be32_to_cpu (int ) ;
 int file_ra_state_init (struct file_ra_state*,int ) ;
 int gfs2_internal_read (struct gfs2_inode*,struct file_ra_state*,char*,scalar_t__*,int) ;
 scalar_t__ i_size_read (struct inode*) ;

u64 gfs2_ri_total(struct gfs2_sbd *sdp)
{
 u64 total_data = 0;
 struct inode *inode = sdp->sd_rindex;
 struct gfs2_inode *ip = GFS2_I(inode);
 char buf[sizeof(struct gfs2_rindex)];
 struct file_ra_state ra_state;
 int error, rgrps;

 file_ra_state_init(&ra_state, inode->i_mapping);
 for (rgrps = 0;; rgrps++) {
  loff_t pos = rgrps * sizeof(struct gfs2_rindex);

  if (pos + sizeof(struct gfs2_rindex) > i_size_read(inode))
   break;
  error = gfs2_internal_read(ip, &ra_state, buf, &pos,
        sizeof(struct gfs2_rindex));
  if (error != sizeof(struct gfs2_rindex))
   break;
  total_data += be32_to_cpu(((struct gfs2_rindex *)buf)->ri_data);
 }
 return total_data;
}
