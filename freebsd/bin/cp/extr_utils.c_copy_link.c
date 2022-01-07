
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int llink ;
struct TYPE_5__ {char* p_path; } ;
struct TYPE_4__ {char* fts_path; int fts_statp; } ;
typedef TYPE_1__ FTSENT ;


 int PATH_MAX ;
 scalar_t__ nflag ;
 scalar_t__ pflag ;
 int printf (char*,char*) ;
 int readlink (char*,char*,int) ;
 int setfile (int ,int) ;
 scalar_t__ symlink (char*,char*) ;
 TYPE_2__ to ;
 scalar_t__ unlink (char*) ;
 scalar_t__ vflag ;
 int warn (char*,char*) ;

int
copy_link(const FTSENT *p, int exists)
{
 int len;
 char llink[PATH_MAX];

 if (exists && nflag) {
  if (vflag)
   printf("%s not overwritten\n", to.p_path);
  return (1);
 }
 if ((len = readlink(p->fts_path, llink, sizeof(llink) - 1)) == -1) {
  warn("readlink: %s", p->fts_path);
  return (1);
 }
 llink[len] = '\0';
 if (exists && unlink(to.p_path)) {
  warn("unlink: %s", to.p_path);
  return (1);
 }
 if (symlink(llink, to.p_path)) {
  warn("symlink: %s", llink);
  return (1);
 }
 return (pflag ? setfile(p->fts_statp, -1) : 0);
}
