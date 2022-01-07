
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_sbd {TYPE_1__* sd_vfs; } ;
typedef int ssize_t ;
struct TYPE_2__ {int s_dev; } ;


 int MAJOR (int ) ;
 int MINOR (int ) ;
 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int,int) ;

__attribute__((used)) static ssize_t id_show(struct gfs2_sbd *sdp, char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%u:%u\n",
   MAJOR(sdp->sd_vfs->s_dev), MINOR(sdp->sd_vfs->s_dev));
}
