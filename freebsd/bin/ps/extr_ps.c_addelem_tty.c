
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int st_rdev; int st_mode; } ;
struct TYPE_2__ {int * ttys; } ;
struct listinfo {scalar_t__ count; scalar_t__ maxcount; TYPE_1__ l; } ;
typedef int pathbuf3 ;
typedef int pathbuf2 ;
typedef int pathbuf ;


 int PATH_MAX ;
 scalar_t__ S_ISCHR (int ) ;
 char* _PATH_CONSOLE ;
 int _PATH_DEV ;
 int _PATH_PTS ;
 int _PATH_TTY ;
 int expand_list (struct listinfo*) ;
 int optfatal ;
 int stat (char const*,struct stat*) ;
 int strcmp (char const*,char*) ;
 int strlcat (char*,char const*,int) ;
 int strlcpy (char*,int ,int) ;
 int strlen (int ) ;
 int strncmp (char*,int ,int ) ;
 int xo_warn (char*,char const*,...) ;
 int xo_warnx (char*,char const*,...) ;

__attribute__((used)) static int
addelem_tty(struct listinfo *inf, const char *elem)
{
 const char *ttypath;
 struct stat sb;
 char pathbuf[PATH_MAX], pathbuf2[PATH_MAX], pathbuf3[PATH_MAX];

 ttypath = ((void*)0);
 pathbuf2[0] = '\0';
 pathbuf3[0] = '\0';
 switch (*elem) {
 case '/':
  ttypath = elem;
  break;
 case 'c':
  if (strcmp(elem, "co") == 0) {
   ttypath = _PATH_CONSOLE;
   break;
  }

 default:
  strlcpy(pathbuf, _PATH_DEV, sizeof(pathbuf));
  strlcat(pathbuf, elem, sizeof(pathbuf));
  ttypath = pathbuf;
  if (strncmp(pathbuf, _PATH_TTY, strlen(_PATH_TTY)) == 0)
   break;
  if (strncmp(pathbuf, _PATH_PTS, strlen(_PATH_PTS)) == 0)
   break;
  if (strcmp(pathbuf, _PATH_CONSOLE) == 0)
   break;

  strlcpy(pathbuf2, _PATH_TTY, sizeof(pathbuf2));
  strlcat(pathbuf2, elem, sizeof(pathbuf2));
  if (stat(pathbuf2, &sb) == 0 && S_ISCHR(sb.st_mode)) {

   ttypath = ((void*)0);
   break;
  }

  strlcpy(pathbuf3, _PATH_PTS, sizeof(pathbuf3));
  strlcat(pathbuf3, elem, sizeof(pathbuf3));
  if (stat(pathbuf3, &sb) == 0 && S_ISCHR(sb.st_mode)) {

   ttypath = ((void*)0);
   break;
  }
  break;
 }
 if (ttypath) {
  if (stat(ttypath, &sb) == -1) {
   if (pathbuf3[0] != '\0')
    xo_warn("%s, %s, and %s", pathbuf3, pathbuf2,
        ttypath);
   else
    xo_warn("%s", ttypath);
   optfatal = 1;
   return (0);
  }
  if (!S_ISCHR(sb.st_mode)) {
   if (pathbuf3[0] != '\0')
    xo_warnx("%s, %s, and %s: Not a terminal",
        pathbuf3, pathbuf2, ttypath);
   else
    xo_warnx("%s: Not a terminal", ttypath);
   optfatal = 1;
   return (0);
  }
 }
 if (inf->count >= inf->maxcount)
  expand_list(inf);
 inf->l.ttys[(inf->count)++] = sb.st_rdev;
 return (1);
}
