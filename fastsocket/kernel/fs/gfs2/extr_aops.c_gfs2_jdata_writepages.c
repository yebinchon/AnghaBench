
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {scalar_t__ sync_mode; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_inode {int i_gl; } ;
struct address_space {int host; } ;


 struct gfs2_inode* GFS2_I (int ) ;
 struct gfs2_sbd* GFS2_SB (int ) ;
 scalar_t__ WB_SYNC_ALL ;
 int gfs2_log_flush (struct gfs2_sbd*,int ) ;
 int gfs2_write_cache_jdata (struct address_space*,struct writeback_control*) ;

__attribute__((used)) static int gfs2_jdata_writepages(struct address_space *mapping,
     struct writeback_control *wbc)
{
 struct gfs2_inode *ip = GFS2_I(mapping->host);
 struct gfs2_sbd *sdp = GFS2_SB(mapping->host);
 int ret;

 ret = gfs2_write_cache_jdata(mapping, wbc);
 if (ret == 0 && wbc->sync_mode == WB_SYNC_ALL) {
  gfs2_log_flush(sdp, ip->i_gl);
  ret = gfs2_write_cache_jdata(mapping, wbc);
 }
 return ret;
}
