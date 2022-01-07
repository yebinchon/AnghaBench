
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wbuf ;
struct stat {int st_mode; } ;
typedef size_t ssize_t ;


 int EINVAL ;
 int ELOOP ;
 int ENAMETOOLONG ;
 int ENOENT ;
 int ENOTDIR ;
 int MAXPATHLEN ;
 int MAXSYMLINKS ;
 int S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 int errno ;
 int free (char*) ;
 int * getcwd (char*,int) ;
 int lstat (char*,struct stat*) ;
 char* malloc (int) ;
 int memcpy (char*,char const*,size_t) ;
 size_t readlink (char*,char*,int) ;
 size_t strlen (char const*) ;

char *
realpath(const char * __restrict path, char * __restrict resolved)
{
 struct stat sb;
 int idx = 0, nlnk = 0;
 const char *q;
 char *p, wbuf[2][MAXPATHLEN], *fres;
 size_t len;
 ssize_t n;


 if (path == ((void*)0)) {
  errno = EINVAL;
  return ((void*)0);
 }

 if (resolved == ((void*)0)) {
  fres = resolved = malloc(MAXPATHLEN);
  if (resolved == ((void*)0))
   return ((void*)0);
 } else
  fres = ((void*)0);
 p = resolved;

 if (*path == '\0') {
  *p = '\0';
  errno = ENOENT;
  goto out;
 }


 if (*path != '/') {

  if (resolved && getcwd(resolved, MAXPATHLEN) == ((void*)0)) {
   p[0] = '.';
   p[1] = '\0';
   goto out;
  }
  len = strlen(resolved);
  if (len > 1)
   p += len;
 }

loop:

 while (*path == '/')
  path++;

 if (*path == '\0') {
  if (p == resolved)
   *p++ = '/';
  *p = '\0';
  return resolved;
 }


 q = path;
 do
  q++;
 while (*q != '/' && *q != '\0');


 if (path[0] == '.') {
  if (q - path == 1) {
   path = q;
   goto loop;
  }
  if (path[1] == '.' && q - path == 2) {

   if (p != resolved)
    while (*--p != '/')
     continue;
   path = q;
   goto loop;
  }
 }


 if (p - resolved + 1 + q - path + 1 > MAXPATHLEN) {
  errno = ENAMETOOLONG;
  if (p == resolved)
   *p++ = '/';
  *p = '\0';
  goto out;
 }
 p[0] = '/';
 memcpy(&p[1], path,

     q - path);
 p[1 + q - path] = '\0';





 if (lstat(resolved, &sb) == -1)
  goto out;

 if (S_ISLNK(sb.st_mode)) {
  if (nlnk++ >= MAXSYMLINKS) {
   errno = ELOOP;
   goto out;
  }
  n = readlink(resolved, wbuf[idx], sizeof(wbuf[0]) - 1);
  if (n < 0)
   goto out;
  if (n == 0) {
   errno = ENOENT;
   goto out;
  }


  if (n + (len = strlen(q)) + 1 > sizeof(wbuf[0])) {
   errno = ENAMETOOLONG;
   goto out;
  }
  memcpy(&wbuf[idx][n], q, len + 1);
  path = wbuf[idx];
  idx ^= 1;


  if (*path == '/')
   p = resolved;
  goto loop;
 }
 if (*q == '/' && !S_ISDIR(sb.st_mode)) {
  errno = ENOTDIR;
  goto out;
 }


 p += 1 + q - path;
 path = q;
 goto loop;
out:
 free(fres);
 return ((void*)0);
}
