
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* opt_rfs; char* opt_fs; } ;
typedef TYPE_1__ am_opts ;


 int XLOG_USER ;
 int plog (int ,char*) ;
 char* xstrdup (char*) ;

char *
amfs_generic_match(am_opts *fo)
{
  char *p;

  if (!fo->opt_rfs) {
    plog(XLOG_USER, "amfs_generic_match: no mount point named (rfs:=)");
    return 0;
  }
  if (!fo->opt_fs) {
    plog(XLOG_USER, "amfs_generic_match: no map named (fs:=)");
    return 0;
  }





  p = fo->opt_rfs;
  fo->opt_rfs = fo->opt_fs;
  fo->opt_fs = p;




  return xstrdup(fo->opt_rfs ? fo->opt_rfs : ".");
}
