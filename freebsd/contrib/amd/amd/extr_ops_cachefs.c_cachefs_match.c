
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int opt_cachedir; int opt_fs; int opt_rfs; } ;
typedef TYPE_1__ am_opts ;


 int XLOG_USER ;
 int dlog (char*,int ) ;
 int plog (int ,char*) ;
 char* xstrdup (int ) ;

__attribute__((used)) static char *
cachefs_match(am_opts *fo)
{

  if (!fo->opt_rfs || !fo->opt_fs || !fo->opt_cachedir) {
    plog(XLOG_USER, "cachefs: must specify cachedir, rfs, and fs");
    return ((void*)0);
  }

  dlog("CACHEFS: using cache directory \"%s\"", fo->opt_cachedir);


  return xstrdup(fo->opt_cachedir);
}
