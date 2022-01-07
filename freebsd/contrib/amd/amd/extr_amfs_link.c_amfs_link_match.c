
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* opt_fs; char* opt_sublink; } ;
typedef TYPE_1__ am_opts ;


 int XFREE (char*) ;
 int XLOG_USER ;
 int plog (int ,char*) ;
 char* str3cat (int *,char*,char*,char*) ;
 char* xstrdup (char*) ;

char *
amfs_link_match(am_opts *fo)
{

  if (!fo->opt_fs) {
    plog(XLOG_USER, "link: no fs specified");
    return 0;
  }
  if (fo->opt_fs[0] == '/') {
    char *link_hack = str3cat(((void*)0), ".", fo->opt_fs, "");
    if (fo->opt_sublink == ((void*)0) || fo->opt_sublink[0] == '\0')
      fo->opt_sublink = xstrdup(fo->opt_fs);
    XFREE(fo->opt_fs);
    fo->opt_fs = link_hack;
  }

  return xstrdup(fo->opt_fs);
}
