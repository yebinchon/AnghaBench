
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ opt_fs; scalar_t__ opt_rfs; scalar_t__ opt_rhost; } ;
typedef TYPE_1__ am_opts ;


 int XLOG_USER ;
 int dlog (char*,scalar_t__,scalar_t__,scalar_t__) ;
 int plog (int ,char*) ;
 int strlen (scalar_t__) ;
 scalar_t__ xmalloc (size_t) ;
 int xsnprintf (char*,size_t,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static char *
nfs_match(am_opts *fo)
{
  char *xmtab;
  size_t l;

  if (fo->opt_fs && !fo->opt_rfs)
    fo->opt_rfs = fo->opt_fs;
  if (!fo->opt_rfs) {
    plog(XLOG_USER, "nfs: no remote filesystem specified");
    return ((void*)0);
  }
  if (!fo->opt_rhost) {
    plog(XLOG_USER, "nfs: no remote host specified");
    return ((void*)0);
  }




  l = strlen(fo->opt_rhost) + strlen(fo->opt_rfs) + 2;
  xmtab = (char *) xmalloc(l);
  xsnprintf(xmtab, l, "%s:%s", fo->opt_rhost, fo->opt_rfs);
  dlog("NFS: mounting remote server \"%s\", remote fs \"%s\" on \"%s\"",
       fo->opt_rhost, fo->opt_rfs, fo->opt_fs);

  return xmtab;
}
