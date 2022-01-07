
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int opt_rfs; int opt_fs; } ;
typedef TYPE_1__ am_opts ;


 int XLOG_USER ;
 int dlog (char*,int ,int ) ;
 int plog (int ,char*) ;
 char* xstrdup (int ) ;

__attribute__((used)) static char *
lofs_match(am_opts *fo)
{
  if (!fo->opt_rfs) {
    plog(XLOG_USER, "lofs: no source filesystem specified");
    return 0;
  }
  dlog("LOFS: mounting fs \"%s\" on \"%s\"",
       fo->opt_rfs, fo->opt_fs);




  return xstrdup(fo->opt_rfs);
}
