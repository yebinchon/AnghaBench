
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct gfs2_sbd* s_fs_info; } ;
struct gfs2_sbd {int dummy; } ;


 int gfs2_log_flush (struct gfs2_sbd*,int *) ;

__attribute__((used)) static int gfs2_sync_fs(struct super_block *sb, int wait)
{
 struct gfs2_sbd *sdp = sb->s_fs_info;
 if (wait && sdp)
  gfs2_log_flush(sdp, ((void*)0));
 return 0;
}
