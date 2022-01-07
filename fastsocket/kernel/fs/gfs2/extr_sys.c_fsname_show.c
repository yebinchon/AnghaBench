
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {char* sd_fsname; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t fsname_show(struct gfs2_sbd *sdp, char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%s\n", sdp->sd_fsname);
}
