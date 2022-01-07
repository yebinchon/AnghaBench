
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int h_lochost; } ;
typedef TYPE_1__ host ;


 int autodir ;
 int xsnprintf (char*,size_t,char*,int ,int ,char*) ;

void
compute_automount_point(char *buf, size_t l, host *hp, char *vn)
{
  xsnprintf(buf, l, "%s/%s%s", autodir, hp->h_lochost, vn);
}
