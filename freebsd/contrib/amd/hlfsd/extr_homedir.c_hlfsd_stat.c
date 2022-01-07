
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int ENOTDIR ;
 int S_ISDIR (int ) ;
 int errno ;
 scalar_t__ stat (char*,struct stat*) ;

__attribute__((used)) static int
hlfsd_stat(char *path, struct stat *statp)
{
  if (stat(path, statp) < 0)
    return -1;
  else if (!S_ISDIR(statp->st_mode)) {
    errno = ENOTDIR;
    return -1;
  }
  return 0;
}
