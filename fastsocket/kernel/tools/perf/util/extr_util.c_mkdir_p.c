
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int mode_t ;


 scalar_t__ mkdir (char*,int ) ;
 scalar_t__ stat (char*,struct stat*) ;
 char* strchr (char*,char) ;

int mkdir_p(char *path, mode_t mode)
{
 struct stat st;
 int err;
 char *d = path;

 if (*d != '/')
  return -1;

 if (stat(path, &st) == 0)
  return 0;

 while (*++d == '/');

 while ((d = strchr(d, '/'))) {
  *d = '\0';
  err = stat(path, &st) && mkdir(path, mode);
  *d++ = '/';
  if (err)
   return -1;
  while (*d == '/')
   ++d;
 }
 return (stat(path, &st) && mkdir(path, mode)) ? -1 : 0;
}
