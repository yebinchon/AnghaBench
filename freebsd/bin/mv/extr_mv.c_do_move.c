
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int f_mntonname; } ;
struct stat {int st_mode; scalar_t__ st_gid; scalar_t__ st_uid; } ;


 int EOF ;
 scalar_t__ EXDEV ;
 int F_OK ;
 int PATH_MAX ;
 int STDIN_FILENO ;
 int S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int W_OK ;
 char* YESNO ;
 scalar_t__ access (char const*,int ) ;
 int copy (char const*,char const*) ;
 scalar_t__ errno ;
 int fastcopy (char const*,char const*,struct stat*) ;
 int fflg ;
 int fprintf (int ,char*,...) ;
 int getchar () ;
 char* group_from_gid (unsigned long,int ) ;
 scalar_t__ iflg ;
 scalar_t__ isatty (int ) ;
 int lstat (char const*,struct stat*) ;
 scalar_t__ nflg ;
 int printf (char*,char const*,...) ;
 int * realpath (char const*,char*) ;
 int rename (char const*,char const*) ;
 int stat (char const*,struct stat*) ;
 int statfs (char*,struct statfs*) ;
 int stderr ;
 int strcmp (char*,int ) ;
 int strmode (int ,char*) ;
 char* user_from_uid (unsigned long,int ) ;
 scalar_t__ vflg ;
 int warn (char*,char const*,...) ;
 int warnx (char*) ;

__attribute__((used)) static int
do_move(const char *from, const char *to)
{
 struct stat sb;
 int ask, ch, first;
 char modep[15];






 if (!fflg && !access(to, F_OK)) {


         if (lstat(from, &sb) == -1) {
   warn("%s", from);
   return (1);
  }


  ask = 0;
  if (nflg) {
   if (vflg)
    printf("%s not overwritten\n", to);
   return (0);
  } else if (iflg) {
   (void)fprintf(stderr, "overwrite %s? %s", to, "(y/n [n]) ");
   ask = 1;
  } else if (access(to, W_OK) && !stat(to, &sb) && isatty(STDIN_FILENO)) {
   strmode(sb.st_mode, modep);
   (void)fprintf(stderr, "override %s%s%s/%s for %s? %s",
       modep + 1, modep[9] == ' ' ? "" : " ",
       user_from_uid((unsigned long)sb.st_uid, 0),
       group_from_gid((unsigned long)sb.st_gid, 0), to, "(y/n [n]) ");
   ask = 1;
  }
  if (ask) {
   first = ch = getchar();
   while (ch != '\n' && ch != EOF)
    ch = getchar();
   if (first != 'y' && first != 'Y') {
    (void)fprintf(stderr, "not overwritten\n");
    return (0);
   }
  }
 }





 if (!rename(from, to)) {
  if (vflg)
   printf("%s -> %s\n", from, to);
  return (0);
 }

 if (errno == EXDEV) {
  struct statfs sfs;
  char path[PATH_MAX];





  if (lstat(from, &sb) == -1) {
   warn("%s", from);
   return (1);
  }
  if (!S_ISLNK(sb.st_mode)) {

   if (realpath(from, path) == ((void*)0)) {
    warn("cannot resolve %s: %s", from, path);
    return (1);
   }
   if (!statfs(path, &sfs) &&
       !strcmp(path, sfs.f_mntonname)) {
    warnx("cannot rename a mount point");
    return (1);
   }
  }
 } else {
  warn("rename %s to %s", from, to);
  return (1);
 }






 if (lstat(from, &sb)) {
  warn("%s", from);
  return (1);
 }
 return (S_ISREG(sb.st_mode) ?
     fastcopy(from, to, &sb) : copy(from, to));
}
