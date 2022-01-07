
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int opt_dev; int opt_fs; } ;
typedef TYPE_1__ am_opts ;


 int XLOG_USER ;
 int dlog (char*,int ,int ) ;
 int plog (int ,char*) ;
 char* xstrdup (int ) ;

__attribute__((used)) static char *
cdfs_match(am_opts *fo)
{
  if (!fo->opt_dev) {
    plog(XLOG_USER, "cdfs: no source device specified");
    return 0;
  }
  dlog("CDFS: mounting device \"%s\" on \"%s\"",
       fo->opt_dev, fo->opt_fs);




  return xstrdup(fo->opt_dev);
}
