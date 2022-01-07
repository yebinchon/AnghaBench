
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int mode_t ;


 scalar_t__ EEXIST ;
 scalar_t__ EISDIR ;
 scalar_t__ ENOTDIR ;
 int S_IRWXG ;
 int S_IRWXO ;
 int S_IRWXU ;
 int S_ISDIR (int ) ;
 int S_IWUSR ;
 int S_IXUSR ;
 scalar_t__ errno ;
 scalar_t__ mkdir (char*,int) ;
 int printf (char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 int umask (int) ;
 scalar_t__ vflag ;
 int warn (char*,char*) ;

__attribute__((used)) static int
build(char *path, mode_t omode)
{
 struct stat sb;
 mode_t numask, oumask;
 int first, last, retval;
 char *p;

 p = path;
 oumask = 0;
 retval = 1;
 if (p[0] == '/')
  ++p;
 for (first = 1, last = 0; !last ; ++p) {
  if (p[0] == '\0')
   last = 1;
  else if (p[0] != '/')
   continue;
  *p = '\0';
  if (!last && p[1] == '\0')
   last = 1;
  if (first) {
   oumask = umask(0);
   numask = oumask & ~(S_IWUSR | S_IXUSR);
   (void)umask(numask);
   first = 0;
  }
  if (last)
   (void)umask(oumask);
  if (mkdir(path, last ? omode : S_IRWXU | S_IRWXG | S_IRWXO) < 0) {
   if (errno == EEXIST || errno == EISDIR) {
    if (stat(path, &sb) < 0) {
     warn("%s", path);
     retval = 0;
     break;
    } else if (!S_ISDIR(sb.st_mode)) {
     if (last)
      errno = EEXIST;
     else
      errno = ENOTDIR;
     warn("%s", path);
     retval = 0;
     break;
    }
    if (last)
     retval = 2;
   } else {
    warn("%s", path);
    retval = 0;
    break;
   }
  } else if (vflag)
   printf("%s\n", path);
  if (!last)
      *p = '/';
 }
 if (!first && !last)
  (void)umask(oumask);
 return (retval);
}
