
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 scalar_t__ ENOENT ;

 scalar_t__ S_ISDIR (int ) ;
 int WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 int _PATH_CP ;
 int _PATH_RM ;
 int _exit (int) ;
 scalar_t__ errno ;
 int execl (int ,char*,char*,char*,char const*,char const*,...) ;
 scalar_t__ lstat (char const*,struct stat*) ;
 scalar_t__ rmdir (char const*) ;
 scalar_t__ unlink (char const*) ;
 scalar_t__ vflg ;
 int vfork () ;
 int waitpid (int,int*,int ) ;
 int warn (char*,char const*,...) ;
 int warnx (char*,int ,char const*,...) ;

__attribute__((used)) static int
copy(const char *from, const char *to)
{
 struct stat sb;
 int pid, status;

 if (lstat(to, &sb) == 0) {

  if (S_ISDIR(sb.st_mode)) {
   if (rmdir(to) != 0) {
    warn("rmdir %s", to);
    return (1);
   }
  } else {
   if (unlink(to) != 0) {
    warn("unlink %s", to);
    return (1);
   }
  }
 } else if (errno != ENOENT) {
  warn("%s", to);
  return (1);
 }


 if (!(pid = vfork())) {
  execl(_PATH_CP, "mv", vflg ? "-PRpv" : "-PRp", "--", from, to,
      (char *)((void*)0));
  _exit(128);
 }
 if (waitpid(pid, &status, 0) == -1) {
  warn("%s %s %s: waitpid", _PATH_CP, from, to);
  return (1);
 }
 if (!WIFEXITED(status)) {
  warnx("%s %s %s: did not terminate normally",
      _PATH_CP, from, to);
  return (1);
 }
 switch (WEXITSTATUS(status)) {
 case 0:
  break;
 case 128:
  warnx("%s %s %s: exec failed", _PATH_CP, from, to);
  return (1);
 default:
  warnx("%s %s %s: terminated with %d (non-zero) status",
      _PATH_CP, from, to, WEXITSTATUS(status));
  return (1);
 }


 if (!(pid = vfork())) {
  execl(_PATH_RM, "mv", "-rf", "--", from, (char *)((void*)0));
  _exit(128);
 }
 if (waitpid(pid, &status, 0) == -1) {
  warn("%s %s: waitpid", _PATH_RM, from);
  return (1);
 }
 if (!WIFEXITED(status)) {
  warnx("%s %s: did not terminate normally", _PATH_RM, from);
  return (1);
 }
 switch (WEXITSTATUS(status)) {
 case 0:
  break;
 case 128:
  warnx("%s %s: exec failed", _PATH_RM, from);
  return (1);
 default:
  warnx("%s %s: terminated with %d (non-zero) status",
      _PATH_RM, from, WEXITSTATUS(status));
  return (1);
 }
 return (0);
}
