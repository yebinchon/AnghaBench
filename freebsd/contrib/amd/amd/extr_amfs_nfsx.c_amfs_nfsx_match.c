
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* opt_rfs; char* opt_sublink; char* opt_fs; int opt_rhost; } ;
typedef TYPE_1__ am_opts ;


 char* FALSE ;
 int XLOG_USER ;
 int deslashify (char*) ;
 int dlog (char*,int ,char*,char*) ;
 int plog (int ,char*) ;
 char* str3cat (char*,int ,char*,char*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 char* strnsave (char*,int) ;
 char* xrealloc (char*,int) ;

__attribute__((used)) static char *
amfs_nfsx_match(am_opts *fo)
{
  char *xmtab;
  char *ptr;
  int len;

  if (!fo->opt_rfs) {
    plog(XLOG_USER, "amfs_nfsx: no remote filesystem specified");
    return FALSE;
  }

  if (!fo->opt_rhost) {
    plog(XLOG_USER, "amfs_nfsx: no remote host specified");
    return FALSE;
  }


  if (fo->opt_sublink == ((void*)0) || fo->opt_sublink[0] == '\0') {
    ptr = strchr(fo->opt_rfs, ',');
    if (ptr && ptr > (fo->opt_rfs + 1))
      fo->opt_sublink = strnsave(fo->opt_rfs + 1, ptr - fo->opt_rfs - 1);
  }






  if ((ptr = strchr(fo->opt_fs, ',')))
    *ptr = '\0';
  deslashify(fo->opt_fs);




  len = strlen(fo->opt_fs);
  fo->opt_fs = xrealloc(fo->opt_fs, len + 1 + 1);
  ptr = fo->opt_fs + len;




  *ptr++ = '/';
  *ptr = '\0';




  xmtab = str3cat((char *) ((void*)0), fo->opt_rhost, ":", fo->opt_rfs);
  dlog("NFSX: mounting remote server \"%s\", remote fs \"%s\" on \"%s\"",
       fo->opt_rhost, fo->opt_rfs, fo->opt_fs);

  return xmtab;
}
