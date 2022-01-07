
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct dirent {char* d_name; int d_namlen; scalar_t__ d_type; } ;
struct arglist {int dummy; } ;
typedef int DIR ;


 char const CTLESC ;
 scalar_t__ DT_DIR ;
 scalar_t__ DT_LNK ;
 scalar_t__ DT_UNKNOWN ;
 int appendarglist (struct arglist*,int ) ;
 int closedir (int *) ;
 char* expdir ;
 char* expdir_end ;
 int int_pending () ;
 scalar_t__ lstat (char*,struct stat*) ;
 int memcpy (char*,char*,int) ;
 int * opendir (char const*) ;
 scalar_t__ patmatch (char const*,char*) ;
 struct dirent* readdir (int *) ;
 int stsavestr (char*) ;

__attribute__((used)) static void
expmeta(char *enddir, char *name, struct arglist *arglist)
{
 const char *p;
 const char *q;
 const char *start;
 char *endname;
 int metaflag;
 struct stat statb;
 DIR *dirp;
 struct dirent *dp;
 int atend;
 int matchdot;
 int esc;
 int namlen;

 metaflag = 0;
 start = name;
 for (p = name; esc = 0, *p; p += esc + 1) {
  if (*p == '*' || *p == '?')
   metaflag = 1;
  else if (*p == '[') {
   q = p + 1;
   if (*q == '!' || *q == '^')
    q++;
   for (;;) {
    if (*q == CTLESC)
     q++;
    if (*q == '/' || *q == '\0')
     break;
    if (*++q == ']') {
     metaflag = 1;
     break;
    }
   }
  } else if (*p == '\0')
   break;
  else {
   if (*p == CTLESC)
    esc++;
   if (p[esc] == '/') {
    if (metaflag)
     break;
    start = p + esc + 1;
   }
  }
 }
 if (metaflag == 0) {
  if (enddir != expdir)
   metaflag++;
  for (p = name ; ; p++) {
   if (*p == CTLESC)
    p++;
   *enddir++ = *p;
   if (*p == '\0')
    break;
   if (enddir == expdir_end)
    return;
  }
  if (metaflag == 0 || lstat(expdir, &statb) >= 0)
   appendarglist(arglist, stsavestr(expdir));
  return;
 }
 endname = name + (p - name);
 if (start != name) {
  p = name;
  while (p < start) {
   if (*p == CTLESC)
    p++;
   *enddir++ = *p++;
   if (enddir == expdir_end)
    return;
  }
 }
 if (enddir == expdir) {
  p = ".";
 } else if (enddir == expdir + 1 && *expdir == '/') {
  p = "/";
 } else {
  p = expdir;
  enddir[-1] = '\0';
 }
 if ((dirp = opendir(p)) == ((void*)0))
  return;
 if (enddir != expdir)
  enddir[-1] = '/';
 if (*endname == 0) {
  atend = 1;
 } else {
  atend = 0;
  *endname = '\0';
  endname += esc + 1;
 }
 matchdot = 0;
 p = start;
 if (*p == CTLESC)
  p++;
 if (*p == '.')
  matchdot++;
 while (! int_pending() && (dp = readdir(dirp)) != ((void*)0)) {
  if (dp->d_name[0] == '.' && ! matchdot)
   continue;
  if (patmatch(start, dp->d_name)) {
   namlen = dp->d_namlen;
   if (enddir + namlen + 1 > expdir_end)
    continue;
   memcpy(enddir, dp->d_name, namlen + 1);
   if (atend)
    appendarglist(arglist, stsavestr(expdir));
   else {
    if (dp->d_type != DT_UNKNOWN &&
        dp->d_type != DT_DIR &&
        dp->d_type != DT_LNK)
     continue;
    if (enddir + namlen + 2 > expdir_end)
     continue;
    enddir[namlen] = '/';
    enddir[namlen + 1] = '\0';
    expmeta(enddir + namlen + 1, endname, arglist);
   }
  }
 }
 closedir(dirp);
 if (! atend)
  endname[-esc - 1] = esc ? CTLESC : '/';
}
