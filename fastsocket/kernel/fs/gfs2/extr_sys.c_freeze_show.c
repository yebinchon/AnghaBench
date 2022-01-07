
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {unsigned int sd_freeze_count; int sd_freeze_lock; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (char*,int ,char*,unsigned int) ;

__attribute__((used)) static ssize_t freeze_show(struct gfs2_sbd *sdp, char *buf)
{
 unsigned int count;

 mutex_lock(&sdp->sd_freeze_lock);
 count = sdp->sd_freeze_count;
 mutex_unlock(&sdp->sd_freeze_lock);

 return snprintf(buf, PAGE_SIZE, "%u\n", count);
}
