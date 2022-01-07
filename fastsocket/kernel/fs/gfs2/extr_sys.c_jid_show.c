
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ls_jid; } ;
struct gfs2_sbd {TYPE_1__ sd_lockstruct; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t jid_show(struct gfs2_sbd *sdp, char *buf)
{
 return sprintf(buf, "%u\n", sdp->sd_lockstruct.ls_jid);
}
