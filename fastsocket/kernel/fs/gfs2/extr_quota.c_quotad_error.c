
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int sd_flags; } ;


 int EROFS ;
 int SDF_SHUTDOWN ;
 int fs_err (struct gfs2_sbd*,char*,char const*,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void quotad_error(struct gfs2_sbd *sdp, const char *msg, int error)
{
 if (error == 0 || error == -EROFS)
  return;
 if (!test_bit(SDF_SHUTDOWN, &sdp->sd_flags))
  fs_err(sdp, "gfs2_quotad: %s error %d\n", msg, error);
}
