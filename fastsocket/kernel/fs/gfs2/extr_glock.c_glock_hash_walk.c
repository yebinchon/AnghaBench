
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int dummy; } ;
typedef int glock_examiner ;


 unsigned int GFS2_GL_HASH_SIZE ;
 int examine_bucket (int ,struct gfs2_sbd const*,unsigned int) ;

__attribute__((used)) static void glock_hash_walk(glock_examiner examiner, const struct gfs2_sbd *sdp)
{
 unsigned x;

 for (x = 0; x < GFS2_GL_HASH_SIZE; x++)
  examine_bucket(examiner, sdp, x);
}
