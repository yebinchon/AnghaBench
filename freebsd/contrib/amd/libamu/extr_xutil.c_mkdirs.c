
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int S_IFDIR ;
 int S_IFMT ;
 int XFREE (char*) ;
 int dlog (char*,char*) ;
 int errno ;
 scalar_t__ mkdir (char*,int) ;
 scalar_t__ stat (char*,struct stat*) ;
 char* strchr (char*,char) ;
 char* xstrdup (char*) ;

int
mkdirs(char *path, int mode)
{



  char *p2 = xstrdup(path);
  char *sp = p2;
  struct stat stb;
  int error_so_far = 0;
  while ((sp = strchr(sp + 1, '/'))) {
    *sp = '\0';
    if (mkdir(p2, mode) < 0) {
      error_so_far = errno;
    } else {
      dlog("mkdir(%s)", p2);
    }
    *sp = '/';
  }

  if (mkdir(p2, mode) < 0) {
    error_so_far = errno;
  } else {
    dlog("mkdir(%s)", p2);
  }

  XFREE(p2);

  return stat(path, &stb) == 0 &&
    (stb.st_mode & S_IFMT) == S_IFDIR ? 0 : error_so_far;
}
