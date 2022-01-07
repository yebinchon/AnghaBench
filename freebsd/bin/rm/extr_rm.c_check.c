
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_flags; int st_gid; int st_uid; int st_mode; } ;


 int EOF ;
 int SF_APPEND ;
 int SF_IMMUTABLE ;
 scalar_t__ S_ISLNK (int ) ;
 int UF_APPEND ;
 int UF_IMMUTABLE ;
 int W_OK ;
 int access (char const*,int ) ;
 int err (int,char*) ;
 char* fflagstostr (int) ;
 int fflush (int ) ;
 int fprintf (int ,char*,char const*,...) ;
 int free (char*) ;
 int getchar () ;
 char* group_from_gid (int ,int ) ;
 scalar_t__ iflag ;
 int stderr ;
 int stdin_ok ;
 int strmode (int ,char*) ;
 int uid ;
 char* user_from_uid (int ,int ) ;

__attribute__((used)) static int
check(const char *path, const char *name, struct stat *sp)
{
 int ch, first;
 char modep[15], *flagsp;


 if (iflag)
  (void)fprintf(stderr, "remove %s? ", path);
 else {






  if (!stdin_ok || S_ISLNK(sp->st_mode) ||
      (!access(name, W_OK) &&
      !(sp->st_flags & (SF_APPEND|SF_IMMUTABLE)) &&
      (!(sp->st_flags & (UF_APPEND|UF_IMMUTABLE)) || !uid)))
   return (1);
  strmode(sp->st_mode, modep);
  if ((flagsp = fflagstostr(sp->st_flags)) == ((void*)0))
   err(1, "fflagstostr");
  (void)fprintf(stderr, "override %s%s%s/%s %s%sfor %s? ",
      modep + 1, modep[10] == ' ' ? "" : " ",
      user_from_uid(sp->st_uid, 0),
      group_from_gid(sp->st_gid, 0),
      *flagsp ? flagsp : "", *flagsp ? " " : "",
      path);
  free(flagsp);
 }
 (void)fflush(stderr);

 first = ch = getchar();
 while (ch != '\n' && ch != EOF)
  ch = getchar();
 return (first == 'y' || first == 'Y');
}
