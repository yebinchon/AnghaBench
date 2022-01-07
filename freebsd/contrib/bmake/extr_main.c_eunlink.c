
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int EISDIR ;
 scalar_t__ S_ISDIR (int ) ;
 int errno ;
 int lstat (char const*,struct stat*) ;
 int unlink (char const*) ;

int
eunlink(const char *file)
{
 struct stat st;

 if (lstat(file, &st) == -1)
  return -1;

 if (S_ISDIR(st.st_mode)) {
  errno = EISDIR;
  return -1;
 }
 return unlink(file);
}
