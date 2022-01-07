
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm_lockops {char* lm_proto_name; } ;
struct TYPE_2__ {struct lm_lockops* ls_ops; } ;
struct gfs2_sbd {TYPE_1__ sd_lockstruct; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t proto_name_show(struct gfs2_sbd *sdp, char *buf)
{
 const struct lm_lockops *ops = sdp->sd_lockstruct.ls_ops;
 return sprintf(buf, "%s\n", ops->lm_proto_name);
}
