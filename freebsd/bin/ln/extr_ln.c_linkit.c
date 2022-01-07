
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wbuf ;
struct stat {int st_mode; } ;
typedef scalar_t__ ssize_t ;
typedef int path ;
typedef int bbuf ;


 int AT_FDCWD ;
 int AT_SYMLINK_FOLLOW ;
 int EISDIR ;
 int ENAMETOOLONG ;
 int EOF ;
 scalar_t__ Fflag ;
 int PATH_MAX ;
 scalar_t__ Pflag ;
 scalar_t__ S_ISDIR (int ) ;
 char* basename (char*) ;
 char* dirname (char*) ;
 int errno ;
 scalar_t__ fflag ;
 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 int getchar () ;
 int hflag ;
 scalar_t__ iflag ;
 scalar_t__ linkat (int ,char const*,int ,char const*,int ) ;
 int linkch ;
 scalar_t__ lstat (char const*,struct stat*) ;
 int printf (char*,char const*,int,char const*) ;
 scalar_t__ rmdir (char const*) ;
 scalar_t__ samedirent (char const*,char const*) ;
 scalar_t__ sflag ;
 scalar_t__ snprintf (char*,int,char*,char const*,char const*) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int stderr ;
 int stdout ;
 int strlcpy (char*,char const*,int) ;
 scalar_t__ stub1 (char const*,struct stat*) ;
 scalar_t__ symlink (char const*,char const*) ;
 scalar_t__ unlink (char const*) ;
 scalar_t__ vflag ;
 int warn (char*,char const*) ;
 int warnx (char*,char const*,char const*) ;
 scalar_t__ wflag ;

__attribute__((used)) static int
linkit(const char *source, const char *target, int isdir)
{
 struct stat sb;
 const char *p;
 int ch, exists, first;
 char path[PATH_MAX];
 char wbuf[PATH_MAX];
 char bbuf[PATH_MAX];

 if (!sflag) {

  if ((Pflag ? lstat : stat)(source, &sb)) {
   warn("%s", source);
   return (1);
  }

  if (S_ISDIR(sb.st_mode)) {
   errno = EISDIR;
   warn("%s", source);
   return (1);
  }
 }





 if (!Fflag && (isdir ||
     (lstat(target, &sb) == 0 && S_ISDIR(sb.st_mode)) ||
     (!hflag && stat(target, &sb) == 0 && S_ISDIR(sb.st_mode)))) {
  if (strlcpy(bbuf, source, sizeof(bbuf)) >= sizeof(bbuf) ||
      (p = basename(bbuf)) == ((void*)0) ||
      snprintf(path, sizeof(path), "%s/%s", target, p) >=
      (ssize_t)sizeof(path)) {
   errno = ENAMETOOLONG;
   warn("%s", source);
   return (1);
  }
  target = path;
 }





 if (sflag && wflag) {
  if (*source == '/') {

   if (stat(source, &sb) != 0)
     warn("warning: %s inaccessible", source);
  } else {





   strlcpy(bbuf, target, sizeof(bbuf));
   p = dirname(bbuf);
   if (p != ((void*)0)) {
    (void)snprintf(wbuf, sizeof(wbuf), "%s/%s",
      p, source);
    if (stat(wbuf, &sb) != 0)
     warn("warning: %s", source);
   }
  }
 }




 exists = !lstat(target, &sb);
 if (exists) {
  if (!sflag && samedirent(source, target)) {
   warnx("%s and %s are the same directory entry",
       source, target);
   return (1);
  }
 }




 if (fflag && exists) {
  if (Fflag && S_ISDIR(sb.st_mode)) {
   if (rmdir(target)) {
    warn("%s", target);
    return (1);
   }
  } else if (unlink(target)) {
   warn("%s", target);
   return (1);
  }
 } else if (iflag && exists) {
  fflush(stdout);
  fprintf(stderr, "replace %s? ", target);

  first = ch = getchar();
  while(ch != '\n' && ch != EOF)
   ch = getchar();
  if (first != 'y' && first != 'Y') {
   fprintf(stderr, "not replaced\n");
   return (1);
  }

  if (Fflag && S_ISDIR(sb.st_mode)) {
   if (rmdir(target)) {
    warn("%s", target);
    return (1);
   }
  } else if (unlink(target)) {
   warn("%s", target);
   return (1);
  }
 }


 if (sflag ? symlink(source, target) :
     linkat(AT_FDCWD, source, AT_FDCWD, target,
     Pflag ? 0 : AT_SYMLINK_FOLLOW)) {
  warn("%s", target);
  return (1);
 }
 if (vflag)
  (void)printf("%s %c> %s\n", target, linkch, source);
 return (0);
}
