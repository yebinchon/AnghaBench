
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int sd_flags; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int SDF_SHUTDOWN ;
 int snprintf (char*,int ,char*,unsigned int) ;
 unsigned int test_bit (int ,int *) ;

__attribute__((used)) static ssize_t withdraw_show(struct gfs2_sbd *sdp, char *buf)
{
 unsigned int b = test_bit(SDF_SHUTDOWN, &sdp->sd_flags);
 return snprintf(buf, PAGE_SIZE, "%u\n", b);
}
