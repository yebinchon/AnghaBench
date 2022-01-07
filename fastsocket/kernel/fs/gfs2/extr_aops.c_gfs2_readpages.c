
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct inode {int dummy; } ;
struct gfs2_sbd {int sd_flags; } ;
struct gfs2_inode {int i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;


 int EIO ;
 struct gfs2_inode* GFS2_I (struct inode*) ;
 struct gfs2_sbd* GFS2_SB (struct inode*) ;
 int LM_ST_SHARED ;
 int SDF_SHUTDOWN ;
 int gfs2_block_map ;
 int gfs2_glock_dq (struct gfs2_holder*) ;
 int gfs2_glock_nq (struct gfs2_holder*) ;
 int gfs2_holder_init (int ,int ,int ,struct gfs2_holder*) ;
 int gfs2_holder_uninit (struct gfs2_holder*) ;
 int gfs2_is_stuffed (struct gfs2_inode*) ;
 int mpage_readpages (struct address_space*,struct list_head*,unsigned int,int ) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int gfs2_readpages(struct file *file, struct address_space *mapping,
     struct list_head *pages, unsigned nr_pages)
{
 struct inode *inode = mapping->host;
 struct gfs2_inode *ip = GFS2_I(inode);
 struct gfs2_sbd *sdp = GFS2_SB(inode);
 struct gfs2_holder gh;
 int ret;

 gfs2_holder_init(ip->i_gl, LM_ST_SHARED, 0, &gh);
 ret = gfs2_glock_nq(&gh);
 if (unlikely(ret))
  goto out_uninit;
 if (!gfs2_is_stuffed(ip))
  ret = mpage_readpages(mapping, pages, nr_pages, gfs2_block_map);
 gfs2_glock_dq(&gh);
out_uninit:
 gfs2_holder_uninit(&gh);
 if (unlikely(test_bit(SDF_SHUTDOWN, &sdp->sd_flags)))
  ret = -EIO;
 return ret;
}
